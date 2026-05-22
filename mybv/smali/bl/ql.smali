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
    .line 204
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    sget-object v0, Lbl/ql;->a:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_21

    .line 205
    sget-object v0, Lbl/ql;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbl/qn;

    iget v0, v0, Lbl/qn;->g:I

    if-ne v0, p1, :cond_1d

    .line 206
    sget-object v0, Lbl/ql;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    .line 209
    :goto_1c
    return v0

    .line 204
    :cond_1d
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 209
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

    .line 177
    invoke-virtual {p1}, Lcom/bilibili/lib/media/resolver/params/ResolveMediaResourceParams;->f()Ljava/lang/String;

    move-result-object v1

    .line 178
    invoke-virtual {p1}, Lcom/bilibili/lib/media/resolver/params/ResolveMediaResourceParams;->e()I

    move-result v0

    .line 179
    if-nez v0, :cond_41

    .line 180
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

    .line 192
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

    .line 180
    :cond_3f
    const/4 v0, 0x0

    goto :goto_2a

    .line 181
    :cond_41
    if-ne v0, v2, :cond_48

    .line 182
    invoke-direct {p0, v2}, Lbl/ql;->a(I)I

    move-result v0

    goto :goto_2a

    .line 183
    :cond_48
    if-ne v0, v3, :cond_4f

    .line 184
    invoke-direct {p0, v3}, Lbl/ql;->a(I)I

    move-result v0

    goto :goto_2a

    .line 185
    :cond_4f
    if-ne v0, v4, :cond_56

    .line 186
    invoke-direct {p0, v4}, Lbl/ql;->a(I)I

    move-result v0

    goto :goto_2a

    .line 187
    :cond_56
    if-ne v0, v5, :cond_5d

    .line 188
    invoke-direct {p0, v5}, Lbl/ql;->a(I)I

    move-result v0

    goto :goto_2a

    .line 189
    :cond_5d
    if-ne v0, v6, :cond_2a

    .line 190
    invoke-direct {p0, v6}, Lbl/ql;->a(I)I

    move-result v0

    goto :goto_2a

    :cond_64
    move v0, v1

    .line 192
    goto :goto_3e
.end method

.method private a(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 214
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    invoke-static {p1}, Lbl/qn;->b(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_d

    .line 217
    :goto_c
    return v0

    :cond_d
    const/16 v0, -0x3e8

    goto :goto_c
.end method

.method private a(Landroid/content/Context;Lcom/bilibili/lib/media/resolver/params/ResolveMediaResourceParams;Lbl/ps;Lbl/pu;Lcom/bilibili/lib/media/resolver/params/ResolveResourceExtra;Z)Lcom/bilibili/lib/media/resource/MediaResource;
    .locals 12
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

    move-result-wide v4

    .line 68
    invoke-direct {p0, p2}, Lbl/ql;->a(Lcom/bilibili/lib/media/resolver/params/ResolveMediaResourceParams;)V

    .line 69
    invoke-direct {p0, p2, p3}, Lbl/ql;->a(Lcom/bilibili/lib/media/resolver/params/ResolveMediaResourceParams;Lbl/ps;)I

    move-result v3

    .line 71
    invoke-virtual {p2}, Lcom/bilibili/lib/media/resolver/params/ResolveMediaResourceParams;->c()J

    move-result-wide v6

    .line 72
    invoke-virtual {p2}, Lcom/bilibili/lib/media/resolver/params/ResolveMediaResourceParams;->a()J

    move-result-wide v8

    .line 74
    const-string v0, "UgcPlayUrl"

    const-string v1, "========== UGC PlayUrl Request (Web API + WBI) =========="

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    const-string v0, "UgcPlayUrl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", avid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", qn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    const-string v0, "PlaySpeed"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[UGC_API_REQUEST_START] cid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", avid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", qn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v0

    invoke-static {v0}, Lbl/mg;->a(Landroid/content/Context;)Lbl/mg;

    move-result-object v0

    .line 79
    invoke-static {v0}, Lmybl/CookieUtil;->getFullCookieWithDevice(Lbl/mg;)Ljava/lang/String;

    move-result-object v1

    .line 80
    const-string v2, "UgcPlayUrl"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Cookie: "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    if-eqz v1, :cond_137

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_137

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "exists("

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v11, "chars)"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_b0
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    if-eqz v1, :cond_13b

    const-string v0, "SESSDATA="

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13b

    const/4 v0, 0x1

    .line 84
    :goto_c6
    new-instance v2, Ljava/util/TreeMap;

    invoke-direct {v2}, Ljava/util/TreeMap;-><init>()V

    .line 85
    const-string v10, "cid"

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v10, v6}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    const-string v6, "avid"

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    const-string v6, "qn"

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    const-string v6, "fnver"

    const-string v7, "0"

    invoke-virtual {v2, v6, v7}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    const-string v6, "fnval"

    const/16 v7, 0x7d0

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    const-string v6, "fourk"

    const-string v7, "1"

    invoke-virtual {v2, v6, v7}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    const-string v6, "voice_balance"

    const-string v7, "1"

    invoke-virtual {v2, v6, v7}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    const-string v6, "from_client"

    const-string v7, "BROWSER"

    invoke-virtual {v2, v6, v7}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    if-nez v0, :cond_11d

    .line 95
    const-string v0, "try_look"

    const-string v6, "1"

    invoke-virtual {v2, v0, v6}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    const-string v0, "UgcPlayUrl"

    const-string v6, "No SESSDATA, using try_look=1"

    invoke-static {v0, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    :cond_11d
    invoke-static {}, Lmybl/WbiSigner;->getInstance()Lmybl/WbiSigner;

    move-result-object v0

    invoke-virtual {v0, v2}, Lmybl/WbiSigner;->encWbiAndGetQuery(Ljava/util/TreeMap;)Ljava/lang/String;

    move-result-object v0

    .line 100
    if-nez v0, :cond_13d

    .line 101
    const-string v0, "UgcPlayUrl"

    const-string v1, "Failed to sign WBI parameters!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    new-instance v0, Lcom/bilibili/lib/media/resolver/exception/ResolveMediaSourceException;

    const-string v1, "WBI sign failed"

    const/4 v2, -0x5

    invoke-direct {v0, v1, v2}, Lcom/bilibili/lib/media/resolver/exception/ResolveMediaSourceException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 80
    :cond_137
    const-string v0, "null"

    goto/16 :goto_b0

    .line 82
    :cond_13b
    const/4 v0, 0x0

    goto :goto_c6

    .line 105
    :cond_13d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "https://api.bilibili.com/x/player/wbi/playurl?"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 106
    const-string v2, "UgcPlayUrl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Signed URL: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    new-instance v2, Lbl/qa$a;

    const-class v6, Lbl/qm;

    invoke-direct {v2, v6}, Lbl/qa$a;-><init>(Ljava/lang/Class;)V

    .line 109
    invoke-virtual {v2, v0}, Lbl/qa$a;->a(Ljava/lang/String;)Lbl/qa$a;

    move-result-object v0

    const-string v2, "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36"

    .line 110
    invoke-virtual {v0, v2}, Lbl/qa$a;->b(Ljava/lang/String;)Lbl/qa$a;

    move-result-object v0

    const/4 v2, 0x1

    .line 111
    invoke-virtual {v0, v2}, Lbl/qa$a;->a(Z)Lbl/qa$a;

    move-result-object v0

    .line 113
    const-string v2, "env"

    const-string v6, "prod"

    invoke-virtual {v0, v2, v6}, Lbl/qa$a;->a(Ljava/lang/String;Ljava/lang/String;)Lbl/qa$a;

    .line 114
    const-string v2, "app-key"

    const-string v6, "android64"

    invoke-virtual {v0, v2, v6}, Lbl/qa$a;->a(Ljava/lang/String;Ljava/lang/String;)Lbl/qa$a;

    .line 115
    const-string v2, "x-bili-aurora-zone"

    const-string v6, "sh001"

    invoke-virtual {v0, v2, v6}, Lbl/qa$a;->a(Ljava/lang/String;Ljava/lang/String;)Lbl/qa$a;

    .line 117
    const-string v2, "DedeUserID"

    invoke-static {v1, v2}, Lmybl/CookieUtil;->getCookieValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 118
    if-eqz v2, :cond_1bf

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1bf

    .line 120
    :try_start_1a1
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 121
    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-lez v8, :cond_1bf

    .line 122
    const-string v8, "x-bili-mid"

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Lbl/qa$a;->a(Ljava/lang/String;Ljava/lang/String;)Lbl/qa$a;

    .line 123
    invoke-static {v6, v7}, Lbl/ql;->genAuroraEid(J)Ljava/lang/String;

    move-result-object v6

    .line 124
    if-eqz v6, :cond_1bf

    .line 125
    const-string v7, "x-bili-aurora-eid"

    invoke-virtual {v0, v7, v6}, Lbl/qa$a;->a(Ljava/lang/String;Ljava/lang/String;)Lbl/qa$a;
    :try_end_1bf
    .catch Ljava/lang/NumberFormatException; {:try_start_1a1 .. :try_end_1bf} :catch_240

    .line 133
    :cond_1bf
    :goto_1bf
    if-eqz v1, :cond_1d3

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1d3

    .line 134
    const-string v2, "Cookie"

    invoke-virtual {v0, v2, v1}, Lbl/qa$a;->a(Ljava/lang/String;Ljava/lang/String;)Lbl/qa$a;

    .line 135
    const-string v1, "UgcPlayUrl"

    const-string v2, "Added Cookie header"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    :cond_1d3
    const-string v1, "Referer"

    const-string v2, "https://www.bilibili.com"

    invoke-virtual {v0, v1, v2}, Lbl/qa$a;->a(Ljava/lang/String;Ljava/lang/String;)Lbl/qa$a;

    .line 139
    invoke-virtual {v0}, Lbl/qa$a;->a()Lbl/qa;

    move-result-object v0

    .line 140
    iget-object v1, p0, Lbl/ql;->b:Lbl/qx;

    invoke-virtual {v0}, Lbl/qa;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lbl/qx;->a(Ljava/lang/String;)V

    .line 141
    const-string v1, "PlaySpeed"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[UGC_API_REQUEST_END] API request done, elapsed="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v4, v6, v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "ms"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    const-string v1, "UgcPlayUrl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Response URL: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lbl/qa;->g()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    invoke-static {v0}, Lbl/pz;->a(Lbl/qa;)Lbl/qe;

    move-result-object v0

    check-cast v0, Lbl/qm;

    .line 147
    const/4 v1, -0x5

    .line 148
    if-nez v0, :cond_25b

    .line 149
    const-string v0, "UgcPlayUrl"

    const-string v1, "Response is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    new-instance v0, Lcom/bilibili/lib/media/resolver/exception/ResolveMediaSourceException;

    const-string v1, "empty response"

    const/4 v2, -0x5

    invoke-direct {v0, v1, v2}, Lcom/bilibili/lib/media/resolver/exception/ResolveMediaSourceException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 128
    :catch_240
    move-exception v6

    .line 129
    const-string v6, "UgcPlayUrl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to parse DedeUserID: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1bf

    .line 152
    :cond_25b
    invoke-virtual {v0}, Lbl/qm;->a()Z

    move-result v2

    if-nez v2, :cond_2a0

    .line 153
    const-string v2, "UgcPlayUrl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PlayUrl request failed! code="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lbl/qm;->b()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", message="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lbl/qm;->c()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    iget-object v2, p0, Lbl/ql;->b:Lbl/qx;

    invoke-virtual {v0}, Lbl/qm;->b()I

    move-result v3

    invoke-virtual {v0}, Lbl/qm;->c()[B

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lbl/qx;->a(I[B)V

    .line 155
    new-instance v0, Lcom/bilibili/lib/media/resolver/exception/ResolveMediaSourceException;

    const-string v2, "connect error"

    invoke-direct {v0, v2, v1}, Lcom/bilibili/lib/media/resolver/exception/ResolveMediaSourceException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 157
    :cond_2a0
    iget-object v1, p0, Lbl/ql;->b:Lbl/qx;

    invoke-virtual {v0}, Lbl/qm;->b()I

    move-result v2

    invoke-virtual {v0}, Lbl/qm;->c()[B

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lbl/qx;->a(I[B)V

    .line 158
    const-string v1, "UgcPlayUrl"

    const-string v2, "PlayUrl request succeeded"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p2

    :try_start_2b8
    invoke-virtual/range {v0 .. v5}, Lbl/qm;->a(Landroid/content/Context;Lcom/bilibili/lib/media/resolver/params/ResolveMediaResourceParams;ILandroid/util/SparseArray;[I)Lcom/bilibili/lib/media/resource/MediaResource;

    move-result-object v1

    .line 161
    if-nez v1, :cond_2fa

    .line 162
    const-string v1, "UgcPlayUrl"

    const-string v2, "MediaResource is null!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    new-instance v1, Lcom/bilibili/lib/media/resolver/exception/ResolveMediaSourceException;

    const-string v2, "resolve fake"

    const/4 v3, -0x3

    invoke-direct {v1, v2, v3}, Lcom/bilibili/lib/media/resolver/exception/ResolveMediaSourceException;-><init>(Ljava/lang/String;I)V

    throw v1
    :try_end_2ce
    .catch Lcom/bilibili/lib/media/resolver/exception/ResolveException; {:try_start_2b8 .. :try_end_2ce} :catch_2ce

    .line 168
    :catch_2ce
    move-exception v1

    .line 169
    const-string v2, "UgcPlayUrl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ResolveException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/bilibili/lib/media/resolver/exception/ResolveException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    iget-object v2, p0, Lbl/ql;->b:Lbl/qx;

    new-instance v3, Ljava/lang/String;

    invoke-virtual {v0}, Lbl/qm;->c()[B

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v2, v1, v3}, Lbl/qx;->a(Lcom/bilibili/lib/media/resolver/exception/ResolveException;Ljava/lang/String;)V

    .line 171
    throw v1

    .line 165
    :cond_2fa
    :try_start_2fa
    const-string v2, "UgcPlayUrl"

    const-string v3, "MediaResource resolved successfully"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    iget-object v2, p0, Lbl/ql;->b:Lbl/qx;

    invoke-virtual {v2, v1}, Lbl/qx;->a(Lcom/bilibili/lib/media/resource/MediaResource;)V
    :try_end_306
    .catch Lcom/bilibili/lib/media/resolver/exception/ResolveException; {:try_start_2fa .. :try_end_306} :catch_2ce

    .line 167
    return-object v1
.end method

.method private a(Landroid/content/Context;ILcom/bilibili/lib/media/resolver/params/ResolveMediaResourceParams;Lcom/bilibili/lib/media/resolver/params/ResolveResourceExtra;Lbl/pu;Lbl/ps;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 222
    invoke-static {p1, p2}, Lbl/qw;->a(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-static {p3, p4, p5, p6}, Lbl/qp;->a(Lcom/bilibili/lib/media/resolver/params/ResolveMediaResourceParams;Lcom/bilibili/lib/media/resolver/params/ResolveResourceExtra;Lbl/pu;Lbl/ps;)Lcom/bilibili/lib/media/resolver/resolve/vip/VipQualityToken;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 223
    invoke-virtual {v0}, Lcom/bilibili/lib/media/resolver/resolve/vip/VipQualityToken;->a()Ljava/lang/String;

    move-result-object v0

    .line 225
    :goto_10
    return-object v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method private a(Lcom/bilibili/lib/media/resolver/params/ResolveMediaResourceParams;)V
    .locals 2

    .prologue
    .line 196
    invoke-virtual {p1}, Lcom/bilibili/lib/media/resolver/params/ResolveMediaResourceParams;->f()Ljava/lang/String;

    move-result-object v0

    .line 197
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_10

    invoke-static {v0}, Lbl/qn;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 201
    :cond_10
    :goto_10
    return-void

    .line 200
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

    .line 229
    const-wide/16 v2, 0x0

    cmp-long v1, p0, v2

    if-gtz v1, :cond_8

    .line 240
    :goto_7
    return-object v0

    .line 231
    :cond_8
    :try_start_8
    const-string v1, "ad1va46a7lza"

    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 232
    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v3, "UTF-8"

    invoke-virtual {v1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 233
    array-length v1, v3

    new-array v4, v1, [B

    .line 234
    const/4 v1, 0x0

    :goto_1e
    array-length v5, v3

    if-ge v1, v5, :cond_31

    .line 235
    aget-byte v5, v3, v1

    array-length v6, v2

    rem-int v6, v1, v6

    aget-byte v6, v2, v6

    xor-int/2addr v5, v6

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v4, v1

    .line 234
    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    .line 237
    :cond_31
    const/4 v1, 0x3

    invoke-static {v4, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_35} :catch_37

    move-result-object v0

    goto :goto_7

    .line 238
    :catch_37
    move-exception v1

    .line 239
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
