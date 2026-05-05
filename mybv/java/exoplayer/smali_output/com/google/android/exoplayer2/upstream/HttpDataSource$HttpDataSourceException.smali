.class public Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;
.super Lcom/google/android/exoplayer2/upstream/DataSourceException;
.source "HttpDataSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/upstream/HttpDataSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HttpDataSourceException"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException$Type;
    }
.end annotation


# static fields
.field public static final TYPE_CLOSE:I = 0x3

.field public static final TYPE_OPEN:I = 0x1

.field public static final TYPE_READ:I = 0x2


# instance fields
.field public final dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

.field public final type:I


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/DataSpec;I)V
    .registers 4
    .param p1, "dataSpec"    # Lcom/google/android/exoplayer2/upstream/DataSpec;
    .param p2, "type"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 251
    const/16 v0, 0x7d0

    invoke-direct {p0, p1, v0, p2}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;-><init>(Lcom/google/android/exoplayer2/upstream/DataSpec;II)V

    .line 252
    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/DataSpec;II)V
    .registers 5
    .param p1, "dataSpec"    # Lcom/google/android/exoplayer2/upstream/DataSpec;
    .param p2, "errorCode"    # I
    .param p3, "type"    # I

    .line 264
    invoke-static {p2, p3}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;->assignErrorCode(II)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/upstream/DataSourceException;-><init>(I)V

    .line 265
    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    .line 266
    iput p3, p0, Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;->type:I

    .line 267
    return-void
.end method

.method public constructor <init>(Ljava/io/IOException;Lcom/google/android/exoplayer2/upstream/DataSpec;I)V
    .registers 5
    .param p1, "cause"    # Ljava/io/IOException;
    .param p2, "dataSpec"    # Lcom/google/android/exoplayer2/upstream/DataSpec;
    .param p3, "type"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 305
    const/16 v0, 0x7d0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;-><init>(Ljava/io/IOException;Lcom/google/android/exoplayer2/upstream/DataSpec;II)V

    .line 306
    return-void
.end method

.method public constructor <init>(Ljava/io/IOException;Lcom/google/android/exoplayer2/upstream/DataSpec;II)V
    .registers 6
    .param p1, "cause"    # Ljava/io/IOException;
    .param p2, "dataSpec"    # Lcom/google/android/exoplayer2/upstream/DataSpec;
    .param p3, "errorCode"    # I
    .param p4, "type"    # I

    .line 322
    invoke-static {p3, p4}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;->assignErrorCode(II)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/upstream/DataSourceException;-><init>(Ljava/lang/Throwable;I)V

    .line 323
    iput-object p2, p0, Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    .line 324
    iput p4, p0, Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;->type:I

    .line 325
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/google/android/exoplayer2/upstream/DataSpec;I)V
    .registers 5
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "dataSpec"    # Lcom/google/android/exoplayer2/upstream/DataSpec;
    .param p3, "type"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 276
    const/16 v0, 0x7d0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/upstream/DataSpec;II)V

    .line 277
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/google/android/exoplayer2/upstream/DataSpec;II)V
    .registers 6
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "dataSpec"    # Lcom/google/android/exoplayer2/upstream/DataSpec;
    .param p3, "errorCode"    # I
    .param p4, "type"    # I

    .line 293
    invoke-static {p3, p4}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;->assignErrorCode(II)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/upstream/DataSourceException;-><init>(Ljava/lang/String;I)V

    .line 294
    iput-object p2, p0, Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    .line 295
    iput p4, p0, Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;->type:I

    .line 296
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/io/IOException;Lcom/google/android/exoplayer2/upstream/DataSpec;I)V
    .registers 11
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/io/IOException;
    .param p3, "dataSpec"    # Lcom/google/android/exoplayer2/upstream/DataSpec;
    .param p4, "type"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 335
    const/16 v4, 0x7d0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;-><init>(Ljava/lang/String;Ljava/io/IOException;Lcom/google/android/exoplayer2/upstream/DataSpec;II)V

    .line 336
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/io/IOException;Lcom/google/android/exoplayer2/upstream/DataSpec;II)V
    .registers 7
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/io/IOException;
    .param p3, "dataSpec"    # Lcom/google/android/exoplayer2/upstream/DataSpec;
    .param p4, "errorCode"    # I
    .param p5, "type"    # I

    .line 354
    invoke-static {p4, p5}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;->assignErrorCode(II)I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/exoplayer2/upstream/DataSourceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    .line 355
    iput-object p3, p0, Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    .line 356
    iput p5, p0, Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;->type:I

    .line 357
    return-void
.end method

.method private static assignErrorCode(II)I
    .registers 3
    .param p0, "errorCode"    # I
    .param p1, "type"    # I

    .line 361
    const/16 v0, 0x7d0

    if-ne p0, v0, :cond_a

    const/4 v0, 0x1

    if-ne p1, v0, :cond_a

    .line 362
    const/16 v0, 0x7d1

    goto :goto_b

    .line 363
    :cond_a
    move v0, p0

    .line 361
    :goto_b
    return v0
.end method

.method public static createForIOException(Ljava/io/IOException;Lcom/google/android/exoplayer2/upstream/DataSpec;I)Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;
    .registers 6
    .param p0, "cause"    # Ljava/io/IOException;
    .param p1, "dataSpec"    # Lcom/google/android/exoplayer2/upstream/DataSpec;
    .param p2, "type"    # I

    .line 221
    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 222
    .local v0, "message":Ljava/lang/String;
    instance-of v1, p0, Ljava/net/SocketTimeoutException;

    if-eqz v1, :cond_b

    .line 223
    const/16 v1, 0x7d2

    .local v1, "errorCode":I
    goto :goto_25

    .line 224
    .end local v1    # "errorCode":I
    :cond_b
    instance-of v1, p0, Ljava/io/InterruptedIOException;

    if-eqz v1, :cond_12

    .line 228
    const/16 v1, 0x3ec

    .restart local v1    # "errorCode":I
    goto :goto_25

    .line 229
    .end local v1    # "errorCode":I
    :cond_12
    if-eqz v0, :cond_23

    .line 230
    invoke-static {v0}, Lcom/google/common/base/Ascii;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "cleartext.*not permitted.*"

    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 231
    const/16 v1, 0x7d7

    .restart local v1    # "errorCode":I
    goto :goto_25

    .line 233
    .end local v1    # "errorCode":I
    :cond_23
    const/16 v1, 0x7d1

    .line 235
    .restart local v1    # "errorCode":I
    :goto_25
    const/16 v2, 0x7d7

    if-ne v1, v2, :cond_2f

    .line 236
    new-instance v2, Lcom/google/android/exoplayer2/upstream/HttpDataSource$CleartextNotPermittedException;

    invoke-direct {v2, p0, p1}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$CleartextNotPermittedException;-><init>(Ljava/io/IOException;Lcom/google/android/exoplayer2/upstream/DataSpec;)V

    goto :goto_34

    .line 237
    :cond_2f
    new-instance v2, Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;

    invoke-direct {v2, p0, p1, v1, p2}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;-><init>(Ljava/io/IOException;Lcom/google/android/exoplayer2/upstream/DataSpec;II)V

    .line 235
    :goto_34
    return-object v2
.end method
