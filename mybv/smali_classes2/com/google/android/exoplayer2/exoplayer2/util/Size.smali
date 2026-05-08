.class public final Lcom/google/android/exoplayer2/util/Size;
.super Ljava/lang/Object;
.source "Size.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final UNKNOWN:Lcom/google/android/exoplayer2/util/Size;

.field public static final ZERO:Lcom/google/android/exoplayer2/util/Size;


# instance fields
.field private final height:I

.field private final width:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 36
    new-instance v0, Lcom/google/android/exoplayer2/util/Size;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Lcom/google/android/exoplayer2/util/Size;-><init>(II)V

    sput-object v0, Lcom/google/android/exoplayer2/util/Size;->UNKNOWN:Lcom/google/android/exoplayer2/util/Size;

    .line 40
    new-instance v0, Lcom/google/android/exoplayer2/util/Size;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lcom/google/android/exoplayer2/util/Size;-><init>(II)V

    sput-object v0, Lcom/google/android/exoplayer2/util/Size;->ZERO:Lcom/google/android/exoplayer2/util/Size;

    return-void
.end method

.method public constructor <init>(II)V
    .registers 4
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/4 v0, -0x1

    if-eq p1, v0, :cond_8

    if-ltz p1, :cond_d

    :cond_8
    if-eq p2, v0, :cond_f

    if-ltz p2, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 56
    iput p1, p0, Lcom/google/android/exoplayer2/util/Size;->width:I

    .line 57
    iput p2, p0, Lcom/google/android/exoplayer2/util/Size;->height:I

    .line 58
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 72
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 73
    return v0

    .line 75
    :cond_4
    const/4 v1, 0x1

    if-ne p0, p1, :cond_8

    .line 76
    return v1

    .line 78
    :cond_8
    instance-of v2, p1, Lcom/google/android/exoplayer2/util/Size;

    if-eqz v2, :cond_1d

    .line 79
    move-object v2, p1

    check-cast v2, Lcom/google/android/exoplayer2/util/Size;

    .line 80
    .local v2, "other":Lcom/google/android/exoplayer2/util/Size;
    iget v3, p0, Lcom/google/android/exoplayer2/util/Size;->width:I

    iget v4, v2, Lcom/google/android/exoplayer2/util/Size;->width:I

    if-ne v3, v4, :cond_1c

    iget v3, p0, Lcom/google/android/exoplayer2/util/Size;->height:I

    iget v4, v2, Lcom/google/android/exoplayer2/util/Size;->height:I

    if-ne v3, v4, :cond_1c

    const/4 v0, 0x1

    :cond_1c
    return v0

    .line 82
    .end local v2    # "other":Lcom/google/android/exoplayer2/util/Size;
    :cond_1d
    return v0
.end method

.method public getHeight()I
    .registers 2

    .line 67
    iget v0, p0, Lcom/google/android/exoplayer2/util/Size;->height:I

    return v0
.end method

.method public getWidth()I
    .registers 2

    .line 62
    iget v0, p0, Lcom/google/android/exoplayer2/util/Size;->width:I

    return v0
.end method

.method public hashCode()I
    .registers 4

    .line 93
    iget v0, p0, Lcom/google/android/exoplayer2/util/Size;->height:I

    iget v1, p0, Lcom/google/android/exoplayer2/util/Size;->width:I

    shl-int/lit8 v2, v1, 0x10

    ushr-int/lit8 v1, v1, 0x10

    or-int/2addr v1, v2

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/google/android/exoplayer2/util/Size;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/exoplayer2/util/Size;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
