.class final Lcom/google/common/math/LinearTransformation$VerticalLinearTransformation;
.super Lcom/google/common/math/LinearTransformation;
.source "LinearTransformation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/math/LinearTransformation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "VerticalLinearTransformation"
.end annotation


# instance fields
.field inverse:Lcom/google/common/math/LinearTransformation;
    .annotation runtime Lcom/google/errorprone/annotations/concurrent/LazyInit;
    .end annotation
.end field

.field final x:D


# direct methods
.method constructor <init>(D)V
    .registers 4
    .param p1, "x"    # D

    .prologue
    .line 229
    invoke-direct {p0}, Lcom/google/common/math/LinearTransformation;-><init>()V

    .line 230
    iput-wide p1, p0, Lcom/google/common/math/LinearTransformation$VerticalLinearTransformation;->x:D

    .line 231
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/math/LinearTransformation$VerticalLinearTransformation;->inverse:Lcom/google/common/math/LinearTransformation;

    .line 232
    return-void
.end method

.method constructor <init>(DLcom/google/common/math/LinearTransformation;)V
    .registers 5
    .param p1, "x"    # D
    .param p3, "inverse"    # Lcom/google/common/math/LinearTransformation;

    .prologue
    .line 234
    invoke-direct {p0}, Lcom/google/common/math/LinearTransformation;-><init>()V

    .line 235
    iput-wide p1, p0, Lcom/google/common/math/LinearTransformation$VerticalLinearTransformation;->x:D

    .line 236
    iput-object p3, p0, Lcom/google/common/math/LinearTransformation$VerticalLinearTransformation;->inverse:Lcom/google/common/math/LinearTransformation;

    .line 237
    return-void
.end method

.method private createInverse()Lcom/google/common/math/LinearTransformation;
    .registers 8

    .prologue
    .line 271
    new-instance v1, Lcom/google/common/math/LinearTransformation$RegularLinearTransformation;

    const-wide/16 v2, 0x0

    iget-wide v4, p0, Lcom/google/common/math/LinearTransformation$VerticalLinearTransformation;->x:D

    move-object v6, p0

    invoke-direct/range {v1 .. v6}, Lcom/google/common/math/LinearTransformation$RegularLinearTransformation;-><init>(DDLcom/google/common/math/LinearTransformation;)V

    return-object v1
.end method


# virtual methods
.method public inverse()Lcom/google/common/math/LinearTransformation;
    .registers 2

    .prologue
    .line 261
    iget-object v0, p0, Lcom/google/common/math/LinearTransformation$VerticalLinearTransformation;->inverse:Lcom/google/common/math/LinearTransformation;

    .line 262
    .local v0, "result":Lcom/google/common/math/LinearTransformation;
    if-nez v0, :cond_a

    invoke-direct {p0}, Lcom/google/common/math/LinearTransformation$VerticalLinearTransformation;->createInverse()Lcom/google/common/math/LinearTransformation;

    move-result-object v0

    .end local v0    # "result":Lcom/google/common/math/LinearTransformation;
    iput-object v0, p0, Lcom/google/common/math/LinearTransformation$VerticalLinearTransformation;->inverse:Lcom/google/common/math/LinearTransformation;

    :cond_a
    return-object v0
.end method

.method public isHorizontal()Z
    .registers 2

    .prologue
    .line 246
    const/4 v0, 0x0

    return v0
.end method

.method public isVertical()Z
    .registers 2

    .prologue
    .line 241
    const/4 v0, 0x1

    return v0
.end method

.method public slope()D
    .registers 2

    .prologue
    .line 251
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    .prologue
    .line 267
    const-string v0, "x = %g"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-wide v4, p0, Lcom/google/common/math/LinearTransformation$VerticalLinearTransformation;->x:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public transform(D)D
    .registers 4
    .param p1, "x"    # D

    .prologue
    .line 256
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
