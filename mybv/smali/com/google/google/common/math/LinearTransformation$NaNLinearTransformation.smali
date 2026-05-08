.class final Lcom/google/common/math/LinearTransformation$NaNLinearTransformation;
.super Lcom/google/common/math/LinearTransformation;
.source "LinearTransformation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/math/LinearTransformation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NaNLinearTransformation"
.end annotation


# static fields
.field static final INSTANCE:Lcom/google/common/math/LinearTransformation$NaNLinearTransformation;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 277
    new-instance v0, Lcom/google/common/math/LinearTransformation$NaNLinearTransformation;

    invoke-direct {v0}, Lcom/google/common/math/LinearTransformation$NaNLinearTransformation;-><init>()V

    sput-object v0, Lcom/google/common/math/LinearTransformation$NaNLinearTransformation;->INSTANCE:Lcom/google/common/math/LinearTransformation$NaNLinearTransformation;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 275
    invoke-direct {p0}, Lcom/google/common/math/LinearTransformation;-><init>()V

    return-void
.end method


# virtual methods
.method public inverse()Lcom/google/common/math/LinearTransformation;
    .registers 1

    .prologue
    .line 301
    return-object p0
.end method

.method public isHorizontal()Z
    .registers 2

    .prologue
    .line 286
    const/4 v0, 0x0

    return v0
.end method

.method public isVertical()Z
    .registers 2

    .prologue
    .line 281
    const/4 v0, 0x0

    return v0
.end method

.method public slope()D
    .registers 3

    .prologue
    .line 291
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 306
    const-string v0, "NaN"

    return-object v0
.end method

.method public transform(D)D
    .registers 5
    .param p1, "x"    # D

    .prologue
    .line 296
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    return-wide v0
.end method
