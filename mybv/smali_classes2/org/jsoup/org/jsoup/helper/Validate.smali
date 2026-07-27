.class public final Lorg/jsoup/helper/Validate;
.super Ljava/lang/Object;
.source "Validate.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fail(Ljava/lang/String;)V
    .registers 2
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 120
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static isFalse(Z)V
    .registers 3
    .param p0, "val"    # Z

    .prologue
    .line 55
    if-eqz p0, :cond_a

    .line 56
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must be false"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_a
    return-void
.end method

.method public static isFalse(ZLjava/lang/String;)V
    .registers 3
    .param p0, "val"    # Z
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 65
    if-eqz p0, :cond_8

    .line 66
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 67
    :cond_8
    return-void
.end method

.method public static isTrue(Z)V
    .registers 3
    .param p0, "val"    # Z

    .prologue
    .line 36
    if-nez p0, :cond_a

    .line 37
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must be true"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 38
    :cond_a
    return-void
.end method

.method public static isTrue(ZLjava/lang/String;)V
    .registers 3
    .param p0, "val"    # Z
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 46
    if-nez p0, :cond_8

    .line 47
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    :cond_8
    return-void
.end method

.method public static noNullElements([Ljava/lang/Object;)V
    .registers 2
    .param p0, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 74
    const-string v0, "Array must not contain any null objects"

    invoke-static {p0, v0}, Lorg/jsoup/helper/Validate;->noNullElements([Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    return-void
.end method

.method public static noNullElements([Ljava/lang/Object;Ljava/lang/String;)V
    .registers 5
    .param p0, "objects"    # [Ljava/lang/Object;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 83
    array-length v2, p0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v2, :cond_11

    aget-object v0, p0, v1

    .line 84
    .local v0, "obj":Ljava/lang/Object;
    if-nez v0, :cond_e

    .line 85
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 83
    :cond_e
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 86
    .end local v0    # "obj":Ljava/lang/Object;
    :cond_11
    return-void
.end method

.method public static notEmpty(Ljava/lang/String;)V
    .registers 3
    .param p0, "string"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 93
    if-eqz p0, :cond_8

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_10

    .line 94
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "String must not be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 95
    :cond_10
    return-void
.end method

.method public static notEmpty(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p0, "string"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 103
    if-eqz p0, :cond_8

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_e

    .line 104
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 105
    :cond_e
    return-void
.end method

.method public static notNull(Ljava/lang/Object;)V
    .registers 3
    .param p0, "obj"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 17
    if-nez p0, :cond_a

    .line 18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Object must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 19
    :cond_a
    return-void
.end method

.method public static notNull(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 3
    .param p0, "obj"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 27
    if-nez p0, :cond_8

    .line 28
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 29
    :cond_8
    return-void
.end method

.method public static wtf(Ljava/lang/String;)V
    .registers 2
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 112
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
