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
    .line 18
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lbl/qh;->a:Landroid/util/SparseArray;

    .line 22
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

    .line 23
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

    .line 24
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

    .line 25
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

    .line 26
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

    .line 27
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

    .line 28
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

    .line 29
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

    .line 30
    invoke-virtual {v2, v1}, Lbl/qn;->a(Lbl/qn;)V

    .line 31
    invoke-virtual {v4, v3}, Lbl/qn;->a(Lbl/qn;)V

    .line 32
    sget-object v8, Lbl/qh;->a:Landroid/util/SparseArray;

    const/16 v9, 0xf

    invoke-virtual {v8, v9, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 33
    sget-object v0, Lbl/qh;->a:Landroid/util/SparseArray;

    const/16 v8, 0x10

    invoke-virtual {v0, v8, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 34
    sget-object v0, Lbl/qh;->a:Landroid/util/SparseArray;

    const/16 v1, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 35
    sget-object v0, Lbl/qh;->a:Landroid/util/SparseArray;

    const/16 v1, 0x30

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 36
    sget-object v0, Lbl/qh;->a:Landroid/util/SparseArray;

    const/16 v1, 0x40

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 37
    sget-object v0, Lbl/qh;->a:Landroid/util/SparseArray;

    const/16 v1, 0x50

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 38
    sget-object v0, Lbl/qh;->a:Landroid/util/SparseArray;

    const/16 v1, 0x70

    invoke-virtual {v0, v1, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 39
    sget-object v0, Lbl/qh;->a:Landroid/util/SparseArray;

    const/16 v1, -0x3e8

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 40
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(I)I
    .locals 2

    .prologue
    .line 154
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    sget-object v0, Lbl/qh;->a:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_21

    .line 155
    sget-object v0, Lbl/qh;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbl/qn;

    iget v0, v0, Lbl/qn;->g:I

    if-ne v0, p1, :cond_1d

    .line 156
    sget-object v0, Lbl/qh;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    .line 159
    :goto_1c
    return v0

    .line 154
    :cond_1d
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 159
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

    .line 125
    invoke-virtual {p1}, Lcom/bilibili/lib/media/resolver/params/ResolveMediaResourceParams;->f()Ljava/lang/String;

    move-result-object v1

    .line 126
    invoke-virtual {p1}, Lcom/bilibili/lib/media/resolver/params/ResolveMediaResourceParams;->e()I

    move-result v0

    .line 127
    if-nez v0, :cond_41

    .line 128
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

    .line 142
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

    .line 128
    :cond_3f
    const/4 v0, 0x0

    goto :goto_2a

    .line 129
    :cond_41
    if-ne v0, v2, :cond_48

    .line 130
    invoke-direct {p0, v2}, Lbl/qh;->a(I)I

    move-result v0

    goto :goto_2a

    .line 131
    :cond_48
    if-ne v0, v3, :cond_4f

    .line 132
    invoke-direct {p0, v3}, Lbl/qh;->a(I)I

    move-result v0

    goto :goto_2a

    .line 133
    :cond_4f
    if-ne v0, v4, :cond_56

    .line 134
    invoke-direct {p0, v4}, Lbl/qh;->a(I)I

    move-result v0

    goto :goto_2a

    .line 135
    :cond_56
    if-ne v0, v5, :cond_5d

    .line 136
    invoke-direct {p0, v5}, Lbl/qh;->a(I)I

    move-result v0

    goto :goto_2a

    .line 137
    :cond_5d
    if-ne v0, v6, :cond_64

    .line 138
    invoke-direct {p0, v6}, Lbl/qh;->a(I)I

    move-result v0

    goto :goto_2a

    .line 139
    :cond_64
    const/16 v2, 0x320

    if-ne v0, v2, :cond_2a

    .line 140
    const/16 v0, 0x320

    invoke-direct {p0, v0}, Lbl/qh;->a(I)I

    move-result v0

    goto :goto_2a

    :cond_6f
    move v0, v1

    .line 142
    goto :goto_3e
.end method

.method private a(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 164
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    invoke-static {p1}, Lbl/qn;->b(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_d

    .line 167
    :goto_c
    return v0

    :cond_d
    const/16 v0, -0x3e8

    goto :goto_c
.end method

.method private a(Landroid/content/Context;Lcom/bilibili/lib/media/resolver/params/ResolveMediaResourceParams;Lbl/ps;Lbl/pu;Lcom/bilibili/lib/media/resolver/params/ResolveResourceExtra;Z)Lcom/bilibili/lib/media/resource/MediaResource;
    .locals 18
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bilibili/lib/media/resolver/exception/ResolveException;
        }
    .end annotation

    .prologue
    .line 64
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 65
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lbl/qh;->a(Lcom/bilibili/lib/media/resolver/params/ResolveMediaResourceParams;)V

    .line 66
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lbl/qh;->a(Lcom/bilibili/lib/media/resolver/params/ResolveMediaResourceParams;Lbl/ps;)I

    move-result v7

    .line 68
    invoke-virtual/range {p2 .. p2}, Lcom/bilibili/lib/media/resolver/params/ResolveMediaResourceParams;->c()J

    move-result-wide v10

    .line 69
    invoke-virtual/range {p2 .. p2}, Lcom/bilibili/lib/media/resolver/params/ResolveMediaResourceParams;->a()J

    move-result-wide v12

    .line 70
    invoke-virtual/range {p5 .. p5}, Lcom/bilibili/lib/media/resolver/params/ResolveResourceExtra;->a()J

    move-result-wide v14

    .line 71
    if-eqz p4, :cond_286

    move-object/from16 v0, p4

    iget-object v4, v0, Lbl/pu;->c:Ljava/lang/String;

    .line 73
    :goto_27
    const-string v5, "PgcPlayUrl"

    const-string v6, "========== PGC PlayUrl Request =========="

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    const-string v5, "PgcPlayUrl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "cid="

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v16, ", avid="

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v16, ", epId="

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v16, ", qn="

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    const-string v5, "PgcPlayUrl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "access_key="

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz v4, :cond_289

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "exists("

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v16, "chars)"

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_9e
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    const-string v4, "PgcPlayUrl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "season_type="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p5 .. p5}, Lcom/bilibili/lib/media/resolver/params/ResolveResourceExtra;->g()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
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

    .line 79
    new-instance v4, Lbl/qa$a;

    const-class v5, Lbl/qi;

    invoke-direct {v4, v5}, Lbl/qa$a;-><init>(Ljava/lang/Class;)V

    const-string v5, "https://api.bilibili.com/pgc/player/web/playurl"

    invoke-virtual {v4, v5}, Lbl/qa$a;->a(Ljava/lang/String;)Lbl/qa$a;

    move-result-object v4

    const-string v5, "Bilibili Freedoooooom/MarkII"

    invoke-virtual {v4, v5}, Lbl/qa$a;->b(Ljava/lang/String;)Lbl/qa$a;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lbl/qa$a;->a(Z)Lbl/qa$a;

    move-result-object v4

    const-string v5, "cid"

    invoke-virtual/range {p2 .. p2}, Lcom/bilibili/lib/media/resolver/params/ResolveMediaResourceParams;->c()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lbl/qa$a;->b(Ljava/lang/String;Ljava/lang/String;)Lbl/qa$a;

    move-result-object v4

    const-string v5, "qn"

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lbl/qa$a;->b(Ljava/lang/String;Ljava/lang/String;)Lbl/qa$a;

    move-result-object v4

    const-string v5, "appkey"

    const/4 v6, 0x3

    const-string v10, "fSDRQgpusmIbrzyc"

    invoke-static {v6, v10}, Lbl/qy;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lbl/qa$a;->b(Ljava/lang/String;Ljava/lang/String;)Lbl/qa$a;

    move-result-object v4

    const-string v5, "otype"

    const-string v6, "json"

    invoke-virtual {v4, v5, v6}, Lbl/qa$a;->b(Ljava/lang/String;Ljava/lang/String;)Lbl/qa$a;

    move-result-object v4

    const-string v5, "platform"

    const-string v6, "android_tv_yst"

    invoke-virtual {v4, v5, v6}, Lbl/qa$a;->b(Ljava/lang/String;Ljava/lang/String;)Lbl/qa$a;

    move-result-object v4

    const-string v5, "mobi_app"

    invoke-virtual/range {p3 .. p3}, Lbl/ps;->d()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lbl/qa$a;->b(Ljava/lang/String;Ljava/lang/String;)Lbl/qa$a;

    move-result-object v4

    const-string v5, "build"

    invoke-virtual/range {p3 .. p3}, Lbl/ps;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lbl/qa$a;->b(Ljava/lang/String;Ljava/lang/String;)Lbl/qa$a;

    move-result-object v4

    const-string v5, "buvid"

    invoke-virtual/range {p3 .. p3}, Lbl/ps;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lbl/qa$a;->b(Ljava/lang/String;Ljava/lang/String;)Lbl/qa$a;

    move-result-object v4

    const-string v5, "device"

    invoke-virtual/range {p3 .. p3}, Lbl/ps;->c()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lbl/qa$a;->b(Ljava/lang/String;Ljava/lang/String;)Lbl/qa$a;

    move-result-object v4

    const-string v5, "type"

    invoke-virtual/range {p2 .. p2}, Lcom/bilibili/lib/media/resolver/params/ResolveMediaResourceParams;->g()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lbl/qa$a;->b(Ljava/lang/String;Ljava/lang/String;)Lbl/qa$a;

    move-result-object v5

    const-string v6, "access_key"

    if-eqz p4, :cond_28d

    move-object/from16 v0, p4

    iget-object v4, v0, Lbl/pu;->c:Ljava/lang/String;

    :goto_182
    invoke-virtual {v5, v6, v4}, Lbl/qa$a;->b(Ljava/lang/String;Ljava/lang/String;)Lbl/qa$a;

    move-result-object v5

    const-string v6, "mid"

    if-eqz p4, :cond_290

    move-object/from16 v0, p4

    iget-wide v10, v0, Lbl/pu;->b:J

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    :goto_192
    invoke-virtual {v5, v6, v4}, Lbl/qa$a;->b(Ljava/lang/String;Ljava/lang/String;)Lbl/qa$a;

    move-result-object v5

    const-string v6, "expire"

    if-eqz p4, :cond_293

    move-object/from16 v0, p4

    iget-wide v10, v0, Lbl/pu;->a:J

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    :goto_1a2
    invoke-virtual {v5, v6, v4}, Lbl/qa$a;->b(Ljava/lang/String;Ljava/lang/String;)Lbl/qa$a;

    move-result-object v5

    const-string v6, "npcybs"

    invoke-virtual/range {p2 .. p2}, Lcom/bilibili/lib/media/resolver/params/ResolveMediaResourceParams;->d()Z

    move-result v4

    if-eqz v4, :cond_296

    const-string v4, "1"

    :goto_1b0
    invoke-virtual {v5, v6, v4}, Lbl/qa$a;->b(Ljava/lang/String;Ljava/lang/String;)Lbl/qa$a;

    move-result-object v4

    const-string v5, "module"

    invoke-virtual/range {p2 .. p2}, Lcom/bilibili/lib/media/resolver/params/ResolveMediaResourceParams;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lbl/qa$a;->b(Ljava/lang/String;Ljava/lang/String;)Lbl/qa$a;

    move-result-object v4

    const-string v5, "track_path"

    invoke-virtual/range {p5 .. p5}, Lcom/bilibili/lib/media/resolver/params/ResolveResourceExtra;->e()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lbl/qa$a;->b(Ljava/lang/String;Ljava/lang/String;)Lbl/qa$a;

    move-result-object v5

    const-string v6, "model"

    if-nez v7, :cond_29a

    invoke-virtual/range {p3 .. p3}, Lbl/ps;->e()Ljava/lang/String;

    move-result-object v4

    :goto_1d0
    invoke-virtual {v5, v6, v4}, Lbl/qa$a;->b(Ljava/lang/String;Ljava/lang/String;)Lbl/qa$a;

    move-result-object v5

    const-string v6, "resolution"

    if-nez v7, :cond_29d

    invoke-virtual/range {p3 .. p3}, Lbl/ps;->f()Ljava/lang/String;

    move-result-object v4

    :goto_1dc
    invoke-virtual {v5, v6, v4}, Lbl/qa$a;->b(Ljava/lang/String;Ljava/lang/String;)Lbl/qa$a;

    move-result-object v5

    const-string v6, "unicom_free"

    invoke-virtual/range {p5 .. p5}, Lcom/bilibili/lib/media/resolver/params/ResolveResourceExtra;->f()Z

    move-result v4

    if-eqz v4, :cond_2a0

    const-string v4, "1"

    :goto_1ea
    invoke-virtual {v5, v6, v4}, Lbl/qa$a;->b(Ljava/lang/String;Ljava/lang/String;)Lbl/qa$a;

    move-result-object v4

    const-string v5, "season_type"

    invoke-virtual/range {p5 .. p5}, Lcom/bilibili/lib/media/resolver/params/ResolveResourceExtra;->g()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lbl/qa$a;->b(Ljava/lang/String;Ljava/lang/String;)Lbl/qa$a;

    move-result-object v4

    const-string v5, "fnval"

    const/16 v6, 0x7d0

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lbl/qa$a;->b(Ljava/lang/String;Ljava/lang/String;)Lbl/qa$a;

    move-result-object v4

    .line 81
    const-wide/16 v10, 0x0

    cmp-long v5, v14, v10

    if-lez v5, :cond_213

    .line 82
    const-string v5, "ep_id"

    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lbl/qa$a;->b(Ljava/lang/String;Ljava/lang/String;)Lbl/qa$a;

    .line 85
    :cond_213
    new-instance v5, Lbl/qd;

    invoke-direct {v5}, Lbl/qd;-><init>()V

    invoke-virtual {v4, v5}, Lbl/qa$a;->a(Lbl/qf;)Lbl/qa$a;

    move-result-object v4

    invoke-virtual {v4}, Lbl/qa$a;->a()Lbl/qa;

    move-result-object v4

    .line 86
    move-object/from16 v0, p0

    iget-object v5, v0, Lbl/qh;->b:Lbl/qx;

    invoke-virtual {v4}, Lbl/qa;->g()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lbl/qx;->a(Ljava/lang/String;)V

    .line 87
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 88
    const-string v5, "PlaySpeed"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[PGC_API_REQUEST_END] API request done, elapsed="

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

    .line 90
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

    .line 92
    invoke-static {v4}, Lbl/pz;->a(Lbl/qa;)Lbl/qe;

    move-result-object v4

    check-cast v4, Lbl/qi;

    .line 94
    if-nez v4, :cond_2a3

    .line 95
    const-string v4, "PgcPlayUrl"

    const-string v5, "Response is null!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    new-instance v4, Lcom/bilibili/lib/media/resolver/exception/ResolveMediaSourceException;

    const-string v5, "empty response"

    const/4 v6, -0x5

    invoke-direct {v4, v5, v6}, Lcom/bilibili/lib/media/resolver/exception/ResolveMediaSourceException;-><init>(Ljava/lang/String;I)V

    throw v4

    .line 71
    :cond_286
    const/4 v4, 0x0

    goto/16 :goto_27

    .line 75
    :cond_289
    const-string v4, "null"

    goto/16 :goto_9e

    .line 79
    :cond_28d
    const/4 v4, 0x0

    goto/16 :goto_182

    :cond_290
    const/4 v4, 0x0

    goto/16 :goto_192

    :cond_293
    const/4 v4, 0x0

    goto/16 :goto_1a2

    :cond_296
    const-string v4, "0"

    goto/16 :goto_1b0

    :cond_29a
    const/4 v4, 0x0

    goto/16 :goto_1d0

    :cond_29d
    const/4 v4, 0x0

    goto/16 :goto_1dc

    :cond_2a0
    const/4 v4, 0x0

    goto/16 :goto_1ea

    .line 98
    :cond_2a3
    move-object/from16 v0, p0

    iget-object v5, v0, Lbl/qh;->b:Lbl/qx;

    invoke-virtual {v4}, Lbl/qi;->b()I

    move-result v6

    invoke-virtual {v4}, Lbl/qi;->c()[B

    move-result-object v8

    invoke-virtual {v5, v6, v8}, Lbl/qx;->a(I[B)V

    .line 100
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

    .line 101
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

    .line 103
    invoke-virtual {v4}, Lbl/qi;->a()Z

    move-result v5

    if-nez v5, :cond_314

    .line 104
    const-string v4, "PgcPlayUrl"

    const-string v5, "PlayUrl request failed!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    new-instance v4, Lcom/bilibili/lib/media/resolver/exception/ResolveMediaSourceException;

    const-string v5, "connect error"

    const/4 v6, -0x5

    invoke-direct {v4, v5, v6}, Lcom/bilibili/lib/media/resolver/exception/ResolveMediaSourceException;-><init>(Ljava/lang/String;I)V

    throw v4

    .line 108
    :cond_314
    const/4 v8, 0x0

    :try_start_315
    check-cast v8, Landroid/util/SparseArray;

    const/4 v9, 0x0

    check-cast v9, [I

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    invoke-virtual/range {v4 .. v9}, Lbl/qi;->a(Landroid/content/Context;Lcom/bilibili/lib/media/resolver/params/ResolveMediaResourceParams;ILandroid/util/SparseArray;[I)Lcom/bilibili/lib/media/resource/MediaResource;

    move-result-object v5

    .line 109
    if-nez v5, :cond_362

    .line 110
    const-string v5, "PgcPlayUrl"

    const-string v6, "MediaResource is null!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    new-instance v5, Lcom/bilibili/lib/media/resolver/exception/ResolveMediaSourceException;

    const-string v6, "resolve fake"

    const/4 v7, -0x3

    invoke-direct {v5, v6, v7}, Lcom/bilibili/lib/media/resolver/exception/ResolveMediaSourceException;-><init>(Ljava/lang/String;I)V

    throw v5
    :try_end_334
    .catch Lcom/bilibili/lib/media/resolver/exception/ResolveException; {:try_start_315 .. :try_end_334} :catch_334

    .line 116
    :catch_334
    move-exception v5

    .line 117
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

    .line 118
    move-object/from16 v0, p0

    iget-object v6, v0, Lbl/qh;->b:Lbl/qx;

    new-instance v7, Ljava/lang/String;

    invoke-virtual {v4}, Lbl/qi;->c()[B

    move-result-object v4

    invoke-direct {v7, v4}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v6, v5, v7}, Lbl/qx;->a(Lcom/bilibili/lib/media/resolver/exception/ResolveException;Ljava/lang/String;)V

    .line 119
    throw v5

    .line 113
    :cond_362
    :try_start_362
    const-string v6, "PgcPlayUrl"

    const-string v7, "MediaResource resolved successfully"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    move-object/from16 v0, p0

    iget-object v6, v0, Lbl/qh;->b:Lbl/qx;

    invoke-virtual {v6, v5}, Lbl/qx;->a(Lcom/bilibili/lib/media/resource/MediaResource;)V
    :try_end_370
    .catch Lcom/bilibili/lib/media/resolver/exception/ResolveException; {:try_start_362 .. :try_end_370} :catch_334

    .line 115
    return-object v5
.end method

.method private a(Lcom/bilibili/lib/media/resolver/params/ResolveMediaResourceParams;)V
    .locals 2

    .prologue
    .line 146
    invoke-virtual {p1}, Lcom/bilibili/lib/media/resolver/params/ResolveMediaResourceParams;->f()Ljava/lang/String;

    move-result-object v0

    .line 147
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_10

    invoke-static {v0}, Lbl/qn;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 151
    :cond_10
    :goto_10
    return-void

    .line 150
    :cond_11
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/bilibili/lib/media/resolver/params/ResolveMediaResourceParams;->a(Ljava/lang/String;)V

    goto :goto_10
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

    .line 44
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 45
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

    .line 46
    if-eqz p2, :cond_3d

    invoke-virtual {p2}, Lcom/bilibili/lib/media/resolver/params/ResolveMediaResourceParams;->c()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_3d

    if-nez p3, :cond_46

    .line 47
    :cond_3d
    new-instance v0, Lcom/bilibili/lib/media/resolver/exception/ResolveMediaSourceException;

    const-string v1, "invalid resolve params"

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Lcom/bilibili/lib/media/resolver/exception/ResolveMediaSourceException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 49
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

    .line 50
    iget-object v0, p0, Lbl/qh;->b:Lbl/qx;

    invoke-virtual {v0}, Lbl/qx;->a()V

    .line 51
    iget-object v0, p0, Lbl/qh;->b:Lbl/qx;

    invoke-virtual {v0}, Lbl/qx;->b()V

    .line 52
    invoke-virtual {p2}, Lcom/bilibili/lib/media/resolver/params/ResolveMediaResourceParams;->i()Lcom/bilibili/lib/media/resolver/params/ResolveMediaResourceParams;

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lbl/qh;->a(Landroid/content/Context;Lcom/bilibili/lib/media/resolver/params/ResolveMediaResourceParams;Lbl/ps;Lbl/pu;Lcom/bilibili/lib/media/resolver/params/ResolveResourceExtra;Z)Lcom/bilibili/lib/media/resource/MediaResource;

    move-result-object v0

    .line 53
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

    .line 54
    return-object v0
.end method

.method public resolveSegment(Landroid/content/Context;Lbl/pt;Ljava/lang/String;)Lcom/bilibili/lib/media/resource/Segment;
    .locals 1

    .prologue
    .line 59
    invoke-virtual {p2}, Lbl/pt;->a()Lcom/bilibili/lib/media/resource/Segment;

    move-result-object v0

    return-object v0
.end method
