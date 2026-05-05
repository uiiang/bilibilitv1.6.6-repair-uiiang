.class public final Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;
.super Ljava/lang/Object;
.source "DataSpec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/upstream/DataSpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private customData:Ljava/lang/Object;

.field private flags:I

.field private httpBody:[B

.field private httpMethod:I

.field private httpRequestHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private key:Ljava/lang/String;

.field private length:J

.field private position:J

.field private uri:Landroid/net/Uri;

.field private uriPositionOffset:J


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;->httpMethod:I

    .line 71
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;->httpRequestHeaders:Ljava/util/Map;

    .line 72
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;->length:J

    .line 73
    return-void
.end method

.method private constructor <init>(Lcom/google/android/exoplayer2/upstream/DataSpec;)V
    .registers 4
    .param p1, "dataSpec"    # Lcom/google/android/exoplayer2/upstream/DataSpec;

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iget-object v0, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->uri:Landroid/net/Uri;

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;->uri:Landroid/net/Uri;

    .line 82
    iget-wide v0, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->uriPositionOffset:J

    iput-wide v0, p0, Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;->uriPositionOffset:J

    .line 83
    iget v0, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->httpMethod:I

    iput v0, p0, Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;->httpMethod:I

    .line 84
    iget-object v0, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->httpBody:[B

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;->httpBody:[B

    .line 85
    iget-object v0, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->httpRequestHeaders:Ljava/util/Map;

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;->httpRequestHeaders:Ljava/util/Map;

    .line 86
    iget-wide v0, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->position:J

    iput-wide v0, p0, Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;->position:J

    .line 87
    iget-wide v0, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->length:J

    iput-wide v0, p0, Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;->length:J

    .line 88
    iget-object v0, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->key:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;->key:Ljava/lang/String;

    .line 89
    iget v0, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->flags:I

    iput v0, p0, Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;->flags:I

    .line 90
    iget-object v0, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->customData:Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;->customData:Ljava/lang/Object;

    .line 91
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/upstream/DataSpec;Lcom/google/android/exoplayer2/upstream/DataSpec$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/google/android/exoplayer2/upstream/DataSpec;
    .param p2, "x1"    # Lcom/google/android/exoplayer2/upstream/DataSpec$1;

    .line 55
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;-><init>(Lcom/google/android/exoplayer2/upstream/DataSpec;)V

    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/exoplayer2/upstream/DataSpec;
    .registers 19

    .line 236
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;->uri:Landroid/net/Uri;

    const-string v2, "The uri must be set."

    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    new-instance v1, Lcom/google/android/exoplayer2/upstream/DataSpec;

    iget-object v4, v0, Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;->uri:Landroid/net/Uri;

    iget-wide v5, v0, Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;->uriPositionOffset:J

    iget v7, v0, Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;->httpMethod:I

    iget-object v8, v0, Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;->httpBody:[B

    iget-object v9, v0, Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;->httpRequestHeaders:Ljava/util/Map;

    iget-wide v10, v0, Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;->position:J

    iget-wide v12, v0, Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;->length:J

    iget-object v14, v0, Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;->key:Ljava/lang/String;

    iget v15, v0, Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;->flags:I

    iget-object v2, v0, Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;->customData:Ljava/lang/Object;

    const/16 v17, 0x0

    move-object v3, v1

    move-object/from16 v16, v2

    invoke-direct/range {v3 .. v17}, Lcom/google/android/exoplayer2/upstream/DataSpec;-><init>(Landroid/net/Uri;JI[BLjava/util/Map;JJLjava/lang/String;ILjava/lang/Object;Lcom/google/android/exoplayer2/upstream/DataSpec$1;)V

    return-object v1
.end method

.method public setCustomData(Ljava/lang/Object;)Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;
    .registers 2
    .param p1, "customData"    # Ljava/lang/Object;

    .line 225
    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;->customData:Ljava/lang/Object;

    .line 226
    return-object p0
.end method

.method public setFlags(I)Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;
    .registers 2
    .param p1, "flags"    # I

    .line 213
    iput p1, p0, Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;->flags:I

    .line 214
    return-object p0
.end method

.method public setHttpBody([B)Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;
    .registers 2
    .param p1, "httpBody"    # [B

    .line 149
    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;->httpBody:[B

    .line 150
    return-object p0
.end method

.method public setHttpMethod(I)Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;
    .registers 2
    .param p1, "httpMethod"    # I

    .line 137
    iput p1, p0, Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;->httpMethod:I

    .line 138
    return-object p0
.end method

.method public setHttpRequestHeaders(Ljava/util/Map;)Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;"
        }
    .end annotation

    .line 165
    .local p1, "httpRequestHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;->httpRequestHeaders:Ljava/util/Map;

    .line 166
    return-object p0
.end method

.method public setKey(Ljava/lang/String;)Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;
    .registers 2
    .param p1, "key"    # Ljava/lang/String;

    .line 201
    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;->key:Ljava/lang/String;

    .line 202
    return-object p0
.end method

.method public setLength(J)Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;
    .registers 3
    .param p1, "length"    # J

    .line 189
    iput-wide p1, p0, Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;->length:J

    .line 190
    return-object p0
.end method

.method public setPosition(J)Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;
    .registers 3
    .param p1, "position"    # J

    .line 177
    iput-wide p1, p0, Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;->position:J

    .line 178
    return-object p0
.end method

.method public setUri(Landroid/net/Uri;)Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;
    .registers 2
    .param p1, "uri"    # Landroid/net/Uri;

    .line 113
    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;->uri:Landroid/net/Uri;

    .line 114
    return-object p0
.end method

.method public setUri(Ljava/lang/String;)Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;
    .registers 3
    .param p1, "uriString"    # Ljava/lang/String;

    .line 101
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;->uri:Landroid/net/Uri;

    .line 102
    return-object p0
.end method

.method public setUriPositionOffset(J)Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;
    .registers 3
    .param p1, "uriPositionOffset"    # J

    .line 125
    iput-wide p1, p0, Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;->uriPositionOffset:J

    .line 126
    return-object p0
.end method
