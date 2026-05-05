.class final Lcom/google/common/reflect/TypeResolver$WildcardCapturer;
.super Ljava/lang/Object;
.source "TypeResolver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/reflect/TypeResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "WildcardCapturer"
.end annotation


# instance fields
.field private final id:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 414
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 416
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/google/common/reflect/TypeResolver$WildcardCapturer;->id:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/reflect/TypeResolver$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/google/common/reflect/TypeResolver$1;

    .prologue
    .line 414
    invoke-direct {p0}, Lcom/google/common/reflect/TypeResolver$WildcardCapturer;-><init>()V

    return-void
.end method

.method private capture([Ljava/lang/reflect/Type;)[Ljava/lang/reflect/Type;
    .registers 5
    .param p1, "types"    # [Ljava/lang/reflect/Type;

    .prologue
    .line 465
    array-length v2, p1

    new-array v1, v2, [Ljava/lang/reflect/Type;

    .line 466
    .local v1, "result":[Ljava/lang/reflect/Type;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    array-length v2, p1

    if-ge v0, v2, :cond_12

    .line 467
    aget-object v2, p1, v0

    invoke-virtual {p0, v2}, Lcom/google/common/reflect/TypeResolver$WildcardCapturer;->capture(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v2

    aput-object v2, v1, v0

    .line 466
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 469
    :cond_12
    return-object v1
.end method

.method private captureNullable(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .registers 3
    .param p1, "type"    # Ljava/lang/reflect/Type;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 458
    if-nez p1, :cond_4

    .line 459
    const/4 v0, 0x0

    .line 461
    :goto_3
    return-object v0

    :cond_4
    invoke-virtual {p0, p1}, Lcom/google/common/reflect/TypeResolver$WildcardCapturer;->capture(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    goto :goto_3
.end method


# virtual methods
.method capture(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .registers 11
    .param p1, "type"    # Ljava/lang/reflect/Type;

    .prologue
    .line 419
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    instance-of v6, p1, Ljava/lang/Class;

    if-eqz v6, :cond_8

    .line 451
    .end local p1    # "type":Ljava/lang/reflect/Type;
    :cond_7
    :goto_7
    return-object p1

    .line 423
    .restart local p1    # "type":Ljava/lang/reflect/Type;
    :cond_8
    instance-of v6, p1, Ljava/lang/reflect/TypeVariable;

    if-nez v6, :cond_7

    .line 426
    instance-of v6, p1, Ljava/lang/reflect/GenericArrayType;

    if-eqz v6, :cond_20

    move-object v0, p1

    .line 427
    check-cast v0, Ljava/lang/reflect/GenericArrayType;

    .line 428
    .local v0, "arrayType":Ljava/lang/reflect/GenericArrayType;
    invoke-interface {v0}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/google/common/reflect/TypeResolver$WildcardCapturer;->capture(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v6

    invoke-static {v6}, Lcom/google/common/reflect/Types;->newArrayType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p1

    goto :goto_7

    .line 430
    .end local v0    # "arrayType":Ljava/lang/reflect/GenericArrayType;
    :cond_20
    instance-of v6, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v6, :cond_42

    move-object v3, p1

    .line 431
    check-cast v3, Ljava/lang/reflect/ParameterizedType;

    .line 432
    .local v3, "parameterizedType":Ljava/lang/reflect/ParameterizedType;
    invoke-interface {v3}, Ljava/lang/reflect/ParameterizedType;->getOwnerType()Ljava/lang/reflect/Type;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/google/common/reflect/TypeResolver$WildcardCapturer;->captureNullable(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v7

    invoke-interface {v3}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v6

    check-cast v6, Ljava/lang/Class;

    invoke-interface {v3}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/google/common/reflect/TypeResolver$WildcardCapturer;->capture([Ljava/lang/reflect/Type;)[Ljava/lang/reflect/Type;

    move-result-object v8

    invoke-static {v7, v6, v8}, Lcom/google/common/reflect/Types;->newParameterizedTypeWithOwner(Ljava/lang/reflect/Type;Ljava/lang/Class;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/ParameterizedType;

    move-result-object p1

    goto :goto_7

    .line 437
    .end local v3    # "parameterizedType":Ljava/lang/reflect/ParameterizedType;
    :cond_42
    instance-of v6, p1, Ljava/lang/reflect/WildcardType;

    if-eqz v6, :cond_8d

    move-object v5, p1

    .line 438
    check-cast v5, Ljava/lang/reflect/WildcardType;

    .line 439
    .local v5, "wildcardType":Ljava/lang/reflect/WildcardType;
    invoke-interface {v5}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;

    move-result-object v1

    .line 440
    .local v1, "lowerBounds":[Ljava/lang/reflect/Type;
    array-length v6, v1

    if-nez v6, :cond_7

    .line 441
    invoke-interface {v5}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v4

    .line 442
    .local v4, "upperBounds":[Ljava/lang/reflect/Type;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "capture#"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/google/common/reflect/TypeResolver$WildcardCapturer;->id:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "-of ? extends "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x26

    invoke-static {v7}, Lcom/google/common/base/Joiner;->on(C)Lcom/google/common/base/Joiner;

    move-result-object v7

    invoke-virtual {v7, v4}, Lcom/google/common/base/Joiner;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 447
    .local v2, "name":Ljava/lang/String;
    const-class v6, Lcom/google/common/reflect/TypeResolver$WildcardCapturer;

    invoke-interface {v5}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v7

    invoke-static {v6, v2, v7}, Lcom/google/common/reflect/Types;->newArtificialTypeVariable(Ljava/lang/reflect/GenericDeclaration;Ljava/lang/String;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/TypeVariable;

    move-result-object p1

    goto/16 :goto_7

    .line 454
    .end local v1    # "lowerBounds":[Ljava/lang/reflect/Type;
    .end local v2    # "name":Ljava/lang/String;
    .end local v4    # "upperBounds":[Ljava/lang/reflect/Type;
    .end local v5    # "wildcardType":Ljava/lang/reflect/WildcardType;
    :cond_8d
    new-instance v6, Ljava/lang/AssertionError;

    const-string v7, "must have been one of the known types"

    invoke-direct {v6, v7}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v6
.end method
