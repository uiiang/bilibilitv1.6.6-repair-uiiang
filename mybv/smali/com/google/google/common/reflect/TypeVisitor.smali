.class abstract Lcom/google/common/reflect/TypeVisitor;
.super Ljava/lang/Object;
.source "TypeVisitor.java"


# annotations
.annotation build Ljavax/annotation/concurrent/NotThreadSafe;
.end annotation


# instance fields
.field private final visited:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/reflect/Type;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/reflect/TypeVisitor;->visited:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final varargs visit([Ljava/lang/reflect/Type;)V
    .registers 11
    .param p1, "types"    # [Ljava/lang/reflect/Type;

    .prologue
    .line 66
    move-object v1, p1

    .local v1, "arr$":[Ljava/lang/reflect/Type;
    array-length v3, v1

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_3
    if-ge v2, v3, :cond_7b

    aget-object v5, v1, v2

    .line 67
    .local v5, "type":Ljava/lang/reflect/Type;
    if-eqz v5, :cond_11

    iget-object v6, p0, Lcom/google/common/reflect/TypeVisitor;->visited:Ljava/util/Set;

    invoke-interface {v6, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_14

    .line 66
    :cond_11
    :goto_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 71
    :cond_14
    const/4 v4, 0x0

    .line 73
    .local v4, "succeeded":Z
    :try_start_15
    instance-of v6, v5, Ljava/lang/reflect/TypeVariable;

    if-eqz v6, :cond_29

    .line 74
    move-object v0, v5

    check-cast v0, Ljava/lang/reflect/TypeVariable;

    move-object v6, v0

    invoke-virtual {p0, v6}, Lcom/google/common/reflect/TypeVisitor;->visitTypeVariable(Ljava/lang/reflect/TypeVariable;)V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_35

    .line 86
    :goto_20
    const/4 v4, 0x1

    .line 88
    if-nez v4, :cond_11

    .line 89
    iget-object v6, p0, Lcom/google/common/reflect/TypeVisitor;->visited:Ljava/util/Set;

    invoke-interface {v6, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_11

    .line 75
    :cond_29
    :try_start_29
    instance-of v6, v5, Ljava/lang/reflect/WildcardType;

    if-eqz v6, :cond_3e

    .line 76
    move-object v0, v5

    check-cast v0, Ljava/lang/reflect/WildcardType;

    move-object v6, v0

    invoke-virtual {p0, v6}, Lcom/google/common/reflect/TypeVisitor;->visitWildcardType(Ljava/lang/reflect/WildcardType;)V
    :try_end_34
    .catchall {:try_start_29 .. :try_end_34} :catchall_35

    goto :goto_20

    .line 88
    :catchall_35
    move-exception v6

    if-nez v4, :cond_3d

    .line 89
    iget-object v7, p0, Lcom/google/common/reflect/TypeVisitor;->visited:Ljava/util/Set;

    invoke-interface {v7, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_3d
    throw v6

    .line 77
    :cond_3e
    :try_start_3e
    instance-of v6, v5, Ljava/lang/reflect/ParameterizedType;

    if-eqz v6, :cond_4a

    .line 78
    move-object v0, v5

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    move-object v6, v0

    invoke-virtual {p0, v6}, Lcom/google/common/reflect/TypeVisitor;->visitParameterizedType(Ljava/lang/reflect/ParameterizedType;)V

    goto :goto_20

    .line 79
    :cond_4a
    instance-of v6, v5, Ljava/lang/Class;

    if-eqz v6, :cond_56

    .line 80
    move-object v0, v5

    check-cast v0, Ljava/lang/Class;

    move-object v6, v0

    invoke-virtual {p0, v6}, Lcom/google/common/reflect/TypeVisitor;->visitClass(Ljava/lang/Class;)V

    goto :goto_20

    .line 81
    :cond_56
    instance-of v6, v5, Ljava/lang/reflect/GenericArrayType;

    if-eqz v6, :cond_62

    .line 82
    move-object v0, v5

    check-cast v0, Ljava/lang/reflect/GenericArrayType;

    move-object v6, v0

    invoke-virtual {p0, v6}, Lcom/google/common/reflect/TypeVisitor;->visitGenericArrayType(Ljava/lang/reflect/GenericArrayType;)V

    goto :goto_20

    .line 84
    :cond_62
    new-instance v6, Ljava/lang/AssertionError;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown type: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v6
    :try_end_7b
    .catchall {:try_start_3e .. :try_end_7b} :catchall_35

    .line 93
    .end local v4    # "succeeded":Z
    .end local v5    # "type":Ljava/lang/reflect/Type;
    :cond_7b
    return-void
.end method

.method visitClass(Ljava/lang/Class;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 95
    .local p1, "t":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    return-void
.end method

.method visitGenericArrayType(Ljava/lang/reflect/GenericArrayType;)V
    .registers 2
    .param p1, "t"    # Ljava/lang/reflect/GenericArrayType;

    .prologue
    .line 97
    return-void
.end method

.method visitParameterizedType(Ljava/lang/reflect/ParameterizedType;)V
    .registers 2
    .param p1, "t"    # Ljava/lang/reflect/ParameterizedType;

    .prologue
    .line 99
    return-void
.end method

.method visitTypeVariable(Ljava/lang/reflect/TypeVariable;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/TypeVariable",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 101
    .local p1, "t":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    return-void
.end method

.method visitWildcardType(Ljava/lang/reflect/WildcardType;)V
    .registers 2
    .param p1, "t"    # Ljava/lang/reflect/WildcardType;

    .prologue
    .line 103
    return-void
.end method
