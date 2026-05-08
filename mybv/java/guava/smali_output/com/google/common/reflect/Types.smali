.class final Lcom/google/common/reflect/Types;
.super Ljava/lang/Object;
.source "Types.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/reflect/Types$NativeTypeVariableEquals;,
        Lcom/google/common/reflect/Types$JavaVersion;,
        Lcom/google/common/reflect/Types$WildcardTypeImpl;,
        Lcom/google/common/reflect/Types$TypeVariableImpl;,
        Lcom/google/common/reflect/Types$TypeVariableInvocationHandler;,
        Lcom/google/common/reflect/Types$ParameterizedTypeImpl;,
        Lcom/google/common/reflect/Types$GenericArrayTypeImpl;,
        Lcom/google/common/reflect/Types$ClassOwnership;
    }
.end annotation


# static fields
.field private static final COMMA_JOINER:Lcom/google/common/base/Joiner;

.field private static final TYPE_NAME:Lcom/google/common/base/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Function",
            "<",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 56
    new-instance v0, Lcom/google/common/reflect/Types$1;

    invoke-direct {v0}, Lcom/google/common/reflect/Types$1;-><init>()V

    sput-object v0, Lcom/google/common/reflect/Types;->TYPE_NAME:Lcom/google/common/base/Function;

    .line 64
    const-string v0, ", "

    invoke-static {v0}, Lcom/google/common/base/Joiner;->on(Ljava/lang/String;)Lcom/google/common/base/Joiner;

    move-result-object v0

    const-string v1, "null"

    invoke-virtual {v0, v1}, Lcom/google/common/base/Joiner;->useForNull(Ljava/lang/String;)Lcom/google/common/base/Joiner;

    move-result-object v0

    sput-object v0, Lcom/google/common/reflect/Types;->COMMA_JOINER:Lcom/google/common/base/Joiner;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 650
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100([Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .registers 2
    .param p0, "x0"    # [Ljava/lang/reflect/Type;

    .prologue
    .line 53
    invoke-static {p0}, Lcom/google/common/reflect/Types;->subtypeOfComponentType([Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200([Ljava/lang/reflect/Type;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # [Ljava/lang/reflect/Type;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 53
    invoke-static {p0, p1}, Lcom/google/common/reflect/Types;->disallowPrimitiveType([Ljava/lang/reflect/Type;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Ljava/util/Collection;)[Ljava/lang/reflect/Type;
    .registers 2
    .param p0, "x0"    # Ljava/util/Collection;

    .prologue
    .line 53
    invoke-static {p0}, Lcom/google/common/reflect/Types;->toArray(Ljava/util/Collection;)[Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400()Lcom/google/common/base/Function;
    .registers 1

    .prologue
    .line 53
    sget-object v0, Lcom/google/common/reflect/Types;->TYPE_NAME:Lcom/google/common/base/Function;

    return-object v0
.end method

.method static synthetic access$500()Lcom/google/common/base/Joiner;
    .registers 1

    .prologue
    .line 53
    sget-object v0, Lcom/google/common/reflect/Types;->COMMA_JOINER:Lcom/google/common/base/Joiner;

    return-object v0
.end method

.method static synthetic access$700(Ljava/lang/Iterable;)Ljava/lang/Iterable;
    .registers 2
    .param p0, "x0"    # Ljava/lang/Iterable;

    .prologue
    .line 53
    invoke-static {p0}, Lcom/google/common/reflect/Types;->filterUpperBounds(Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method private static disallowPrimitiveType([Ljava/lang/reflect/Type;Ljava/lang/String;)V
    .registers 9
    .param p0, "types"    # [Ljava/lang/reflect/Type;
    .param p1, "usedAs"    # Ljava/lang/String;

    .prologue
    .line 529
    move-object v0, p0

    .local v0, "arr$":[Ljava/lang/reflect/Type;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_3
    if-ge v2, v3, :cond_1f

    aget-object v4, v0, v2

    .line 530
    .local v4, "type":Ljava/lang/reflect/Type;
    instance-of v5, v4, Ljava/lang/Class;

    if-eqz v5, :cond_1a

    move-object v1, v4

    .line 531
    check-cast v1, Ljava/lang/Class;

    .line 532
    .local v1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v5

    if-nez v5, :cond_1d

    const/4 v5, 0x1

    :goto_15
    const-string v6, "Primitive type \'%s\' used as %s"

    invoke-static {v5, v6, v1, p1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 529
    .end local v1    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 532
    .restart local v1    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1d
    const/4 v5, 0x0

    goto :goto_15

    .line 535
    .end local v1    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "type":Ljava/lang/reflect/Type;
    :cond_1f
    return-void
.end method

.method private static filterUpperBounds(Ljava/lang/Iterable;)Ljava/lang/Iterable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/reflect/Type;",
            ">;)",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/reflect/Type;",
            ">;"
        }
    .end annotation

    .prologue
    .line 525
    .local p0, "bounds":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/reflect/Type;>;"
    const-class v0, Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/common/base/Predicates;->equalTo(Ljava/lang/Object;)Lcom/google/common/base/Predicate;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Predicates;->not(Lcom/google/common/base/Predicate;)Lcom/google/common/base/Predicate;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/common/collect/Iterables;->filter(Ljava/lang/Iterable;Lcom/google/common/base/Predicate;)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method static getArrayClass(Ljava/lang/Class;)Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 542
    .local p0, "componentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method static getComponentType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .registers 5
    .param p0, "type"    # Ljava/lang/reflect/Type;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 181
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 183
    .local v0, "result":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Ljava/lang/reflect/Type;>;"
    new-instance v1, Lcom/google/common/reflect/Types$2;

    invoke-direct {v1, v0}, Lcom/google/common/reflect/Types$2;-><init>(Ljava/util/concurrent/atomic/AtomicReference;)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/reflect/Type;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v1, v2}, Lcom/google/common/reflect/Types$2;->visit([Ljava/lang/reflect/Type;)V

    .line 204
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Type;

    return-object v1
.end method

.method static newArrayType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .registers 8
    .param p0, "componentType"    # Ljava/lang/reflect/Type;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 68
    instance-of v3, p0, Ljava/lang/reflect/WildcardType;

    if-eqz v3, :cond_3f

    move-object v2, p0

    .line 69
    check-cast v2, Ljava/lang/reflect/WildcardType;

    .line 70
    .local v2, "wildcard":Ljava/lang/reflect/WildcardType;
    invoke-interface {v2}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    .line 71
    .local v0, "lowerBounds":[Ljava/lang/reflect/Type;
    array-length v3, v0

    if-gt v3, v4, :cond_24

    move v3, v4

    :goto_11
    const-string v6, "Wildcard cannot have more than one lower bounds."

    invoke-static {v3, v6}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 72
    array-length v3, v0

    if-ne v3, v4, :cond_26

    .line 73
    aget-object v3, v0, v5

    invoke-static {v3}, Lcom/google/common/reflect/Types;->newArrayType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-static {v3}, Lcom/google/common/reflect/Types;->supertypeOf(Ljava/lang/reflect/Type;)Ljava/lang/reflect/WildcardType;

    move-result-object v3

    .line 80
    .end local v0    # "lowerBounds":[Ljava/lang/reflect/Type;
    .end local v2    # "wildcard":Ljava/lang/reflect/WildcardType;
    :goto_23
    return-object v3

    .restart local v0    # "lowerBounds":[Ljava/lang/reflect/Type;
    .restart local v2    # "wildcard":Ljava/lang/reflect/WildcardType;
    :cond_24
    move v3, v5

    .line 71
    goto :goto_11

    .line 75
    :cond_26
    invoke-interface {v2}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v1

    .line 76
    .local v1, "upperBounds":[Ljava/lang/reflect/Type;
    array-length v3, v1

    if-ne v3, v4, :cond_3d

    :goto_2d
    const-string v3, "Wildcard should have only one upper bound."

    invoke-static {v4, v3}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 77
    aget-object v3, v1, v5

    invoke-static {v3}, Lcom/google/common/reflect/Types;->newArrayType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-static {v3}, Lcom/google/common/reflect/Types;->subtypeOf(Ljava/lang/reflect/Type;)Ljava/lang/reflect/WildcardType;

    move-result-object v3

    goto :goto_23

    :cond_3d
    move v4, v5

    .line 76
    goto :goto_2d

    .line 80
    .end local v0    # "lowerBounds":[Ljava/lang/reflect/Type;
    .end local v1    # "upperBounds":[Ljava/lang/reflect/Type;
    .end local v2    # "wildcard":Ljava/lang/reflect/WildcardType;
    :cond_3f
    sget-object v3, Lcom/google/common/reflect/Types$JavaVersion;->CURRENT:Lcom/google/common/reflect/Types$JavaVersion;

    invoke-virtual {v3, p0}, Lcom/google/common/reflect/Types$JavaVersion;->newArrayType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v3

    goto :goto_23
.end method

.method static varargs newArtificialTypeVariable(Ljava/lang/reflect/GenericDeclaration;Ljava/lang/String;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/TypeVariable;
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "bounds"    # [Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D::",
            "Ljava/lang/reflect/GenericDeclaration;",
            ">(TD;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/lang/reflect/TypeVariable",
            "<TD;>;"
        }
    .end annotation

    .prologue
    .line 151
    .local p0, "declaration":Ljava/lang/reflect/GenericDeclaration;, "TD;"
    array-length v0, p2

    if-nez v0, :cond_b

    const/4 v0, 0x1

    new-array p2, v0, [Ljava/lang/reflect/Type;

    .end local p2    # "bounds":[Ljava/lang/reflect/Type;
    const/4 v0, 0x0

    const-class v1, Ljava/lang/Object;

    aput-object v1, p2, v0

    :cond_b
    invoke-static {p0, p1, p2}, Lcom/google/common/reflect/Types;->newTypeVariableImpl(Ljava/lang/reflect/GenericDeclaration;Ljava/lang/String;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/TypeVariable;

    move-result-object v0

    return-object v0
.end method

.method static varargs newParameterizedType(Ljava/lang/Class;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/ParameterizedType;
    .registers 4
    .param p1, "arguments"    # [Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/lang/reflect/ParameterizedType;"
        }
    .end annotation

    .prologue
    .line 102
    .local p0, "rawType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Lcom/google/common/reflect/Types$ParameterizedTypeImpl;

    sget-object v1, Lcom/google/common/reflect/Types$ClassOwnership;->JVM_BEHAVIOR:Lcom/google/common/reflect/Types$ClassOwnership;

    invoke-virtual {v1, p0}, Lcom/google/common/reflect/Types$ClassOwnership;->getOwnerType(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1, p0, p1}, Lcom/google/common/reflect/Types$ParameterizedTypeImpl;-><init>(Ljava/lang/reflect/Type;Ljava/lang/Class;[Ljava/lang/reflect/Type;)V

    return-object v0
.end method

.method static varargs newParameterizedTypeWithOwner(Ljava/lang/reflect/Type;Ljava/lang/Class;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/ParameterizedType;
    .registers 5
    .param p0, "ownerType"    # Ljava/lang/reflect/Type;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "arguments"    # [Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/lang/reflect/ParameterizedType;"
        }
    .end annotation

    .prologue
    .line 89
    .local p1, "rawType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez p0, :cond_7

    .line 90
    invoke-static {p1, p2}, Lcom/google/common/reflect/Types;->newParameterizedType(Ljava/lang/Class;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/ParameterizedType;

    move-result-object v0

    .line 95
    :goto_6
    return-object v0

    .line 93
    :cond_7
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    invoke-virtual {p1}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_1c

    const/4 v0, 0x1

    :goto_11
    const-string v1, "Owner type for unenclosed %s"

    invoke-static {v0, v1, p1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 95
    new-instance v0, Lcom/google/common/reflect/Types$ParameterizedTypeImpl;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/common/reflect/Types$ParameterizedTypeImpl;-><init>(Ljava/lang/reflect/Type;Ljava/lang/Class;[Ljava/lang/reflect/Type;)V

    goto :goto_6

    .line 94
    :cond_1c
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private static newTypeVariableImpl(Ljava/lang/reflect/GenericDeclaration;Ljava/lang/String;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/TypeVariable;
    .registers 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "bounds"    # [Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D::",
            "Ljava/lang/reflect/GenericDeclaration;",
            ">(TD;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/lang/reflect/TypeVariable",
            "<TD;>;"
        }
    .end annotation

    .prologue
    .line 332
    .local p0, "genericDeclaration":Ljava/lang/reflect/GenericDeclaration;, "TD;"
    new-instance v1, Lcom/google/common/reflect/Types$TypeVariableImpl;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/common/reflect/Types$TypeVariableImpl;-><init>(Ljava/lang/reflect/GenericDeclaration;Ljava/lang/String;[Ljava/lang/reflect/Type;)V

    .line 335
    .local v1, "typeVariableImpl":Lcom/google/common/reflect/Types$TypeVariableImpl;, "Lcom/google/common/reflect/Types$TypeVariableImpl<TD;>;"
    const-class v2, Ljava/lang/reflect/TypeVariable;

    new-instance v3, Lcom/google/common/reflect/Types$TypeVariableInvocationHandler;

    invoke-direct {v3, v1}, Lcom/google/common/reflect/Types$TypeVariableInvocationHandler;-><init>(Lcom/google/common/reflect/Types$TypeVariableImpl;)V

    invoke-static {v2, v3}, Lcom/google/common/reflect/Reflection;->newProxy(Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/TypeVariable;

    .line 338
    .local v0, "typeVariable":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<TD;>;"
    return-object v0
.end method

.method static subtypeOf(Ljava/lang/reflect/Type;)Ljava/lang/reflect/WildcardType;
    .registers 5
    .param p0, "upperBound"    # Ljava/lang/reflect/Type;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 158
    new-instance v0, Lcom/google/common/reflect/Types$WildcardTypeImpl;

    new-array v1, v3, [Ljava/lang/reflect/Type;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/reflect/Type;

    aput-object p0, v2, v3

    invoke-direct {v0, v1, v2}, Lcom/google/common/reflect/Types$WildcardTypeImpl;-><init>([Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)V

    return-object v0
.end method

.method private static subtypeOfComponentType([Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .registers 8
    .param p0, "bounds"    # [Ljava/lang/reflect/Type;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 213
    move-object v0, p0

    .local v0, "arr$":[Ljava/lang/reflect/Type;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_3
    if-ge v4, v5, :cond_23

    aget-object v1, v0, v4

    .line 214
    .local v1, "bound":Ljava/lang/reflect/Type;
    invoke-static {v1}, Lcom/google/common/reflect/Types;->getComponentType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v3

    .line 215
    .local v3, "componentType":Ljava/lang/reflect/Type;
    if-eqz v3, :cond_20

    .line 218
    instance-of v6, v3, Ljava/lang/Class;

    if-eqz v6, :cond_1b

    move-object v2, v3

    .line 219
    check-cast v2, Ljava/lang/Class;

    .line 220
    .local v2, "componentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v2}, Ljava/lang/Class;->isPrimitive()Z

    move-result v6

    if-eqz v6, :cond_1b

    .line 227
    .end local v1    # "bound":Ljava/lang/reflect/Type;
    .end local v2    # "componentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "componentType":Ljava/lang/reflect/Type;
    :goto_1a
    return-object v2

    .line 224
    .restart local v1    # "bound":Ljava/lang/reflect/Type;
    .restart local v3    # "componentType":Ljava/lang/reflect/Type;
    :cond_1b
    invoke-static {v3}, Lcom/google/common/reflect/Types;->subtypeOf(Ljava/lang/reflect/Type;)Ljava/lang/reflect/WildcardType;

    move-result-object v2

    goto :goto_1a

    .line 213
    :cond_20
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 227
    .end local v1    # "bound":Ljava/lang/reflect/Type;
    .end local v3    # "componentType":Ljava/lang/reflect/Type;
    :cond_23
    const/4 v2, 0x0

    goto :goto_1a
.end method

.method static supertypeOf(Ljava/lang/reflect/Type;)Ljava/lang/reflect/WildcardType;
    .registers 6
    .param p0, "lowerBound"    # Ljava/lang/reflect/Type;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 164
    new-instance v0, Lcom/google/common/reflect/Types$WildcardTypeImpl;

    new-array v1, v2, [Ljava/lang/reflect/Type;

    aput-object p0, v1, v4

    new-array v2, v2, [Ljava/lang/reflect/Type;

    const-class v3, Ljava/lang/Object;

    aput-object v3, v2, v4

    invoke-direct {v0, v1, v2}, Lcom/google/common/reflect/Types$WildcardTypeImpl;-><init>([Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)V

    return-object v0
.end method

.method private static toArray(Ljava/util/Collection;)[Ljava/lang/reflect/Type;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/reflect/Type;",
            ">;)[",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    .prologue
    .line 521
    .local p0, "types":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/reflect/Type;>;"
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/reflect/Type;

    invoke-interface {p0, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/reflect/Type;

    return-object v0
.end method

.method static toString(Ljava/lang/reflect/Type;)Ljava/lang/String;
    .registers 2
    .param p0, "type"    # Ljava/lang/reflect/Type;

    .prologue
    .line 176
    instance-of v0, p0, Ljava/lang/Class;

    if-eqz v0, :cond_b

    check-cast p0, Ljava/lang/Class;

    .end local p0    # "type":Ljava/lang/reflect/Type;
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .restart local p0    # "type":Ljava/lang/reflect/Type;
    :goto_a
    return-object v0

    :cond_b
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method
