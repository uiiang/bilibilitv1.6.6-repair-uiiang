.class Lcom/google/common/reflect/TypeToken$Bounds;
.super Ljava/lang/Object;
.source "TypeToken.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/reflect/TypeToken;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Bounds"
.end annotation


# instance fields
.field private final bounds:[Ljava/lang/reflect/Type;

.field private final target:Z


# direct methods
.method constructor <init>([Ljava/lang/reflect/Type;Z)V
    .registers 3
    .param p1, "bounds"    # [Ljava/lang/reflect/Type;
    .param p2, "target"    # Z

    .prologue
    .line 971
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 972
    iput-object p1, p0, Lcom/google/common/reflect/TypeToken$Bounds;->bounds:[Ljava/lang/reflect/Type;

    .line 973
    iput-boolean p2, p0, Lcom/google/common/reflect/TypeToken$Bounds;->target:Z

    .line 974
    return-void
.end method


# virtual methods
.method isSubtypeOf(Ljava/lang/reflect/Type;)Z
    .registers 8
    .param p1, "supertype"    # Ljava/lang/reflect/Type;

    .prologue
    .line 977
    iget-object v0, p0, Lcom/google/common/reflect/TypeToken$Bounds;->bounds:[Ljava/lang/reflect/Type;

    .local v0, "arr$":[Ljava/lang/reflect/Type;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_4
    if-ge v2, v3, :cond_1a

    aget-object v1, v0, v2

    .line 978
    .local v1, "bound":Ljava/lang/reflect/Type;
    invoke-static {v1}, Lcom/google/common/reflect/TypeToken;->of(Ljava/lang/reflect/Type;)Lcom/google/common/reflect/TypeToken;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/google/common/reflect/TypeToken;->isSubtypeOf(Ljava/lang/reflect/Type;)Z

    move-result v4

    iget-boolean v5, p0, Lcom/google/common/reflect/TypeToken$Bounds;->target:Z

    if-ne v4, v5, :cond_17

    .line 979
    iget-boolean v4, p0, Lcom/google/common/reflect/TypeToken$Bounds;->target:Z

    .line 982
    .end local v1    # "bound":Ljava/lang/reflect/Type;
    :goto_16
    return v4

    .line 977
    .restart local v1    # "bound":Ljava/lang/reflect/Type;
    :cond_17
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 982
    .end local v1    # "bound":Ljava/lang/reflect/Type;
    :cond_1a
    iget-boolean v4, p0, Lcom/google/common/reflect/TypeToken$Bounds;->target:Z

    if-nez v4, :cond_20

    const/4 v4, 0x1

    goto :goto_16

    :cond_20
    const/4 v4, 0x0

    goto :goto_16
.end method

.method isSupertypeOf(Ljava/lang/reflect/Type;)Z
    .registers 9
    .param p1, "subtype"    # Ljava/lang/reflect/Type;

    .prologue
    .line 986
    invoke-static {p1}, Lcom/google/common/reflect/TypeToken;->of(Ljava/lang/reflect/Type;)Lcom/google/common/reflect/TypeToken;

    move-result-object v4

    .line 987
    .local v4, "type":Lcom/google/common/reflect/TypeToken;, "Lcom/google/common/reflect/TypeToken<*>;"
    iget-object v0, p0, Lcom/google/common/reflect/TypeToken$Bounds;->bounds:[Ljava/lang/reflect/Type;

    .local v0, "arr$":[Ljava/lang/reflect/Type;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_8
    if-ge v2, v3, :cond_1a

    aget-object v1, v0, v2

    .line 988
    .local v1, "bound":Ljava/lang/reflect/Type;
    invoke-virtual {v4, v1}, Lcom/google/common/reflect/TypeToken;->isSubtypeOf(Ljava/lang/reflect/Type;)Z

    move-result v5

    iget-boolean v6, p0, Lcom/google/common/reflect/TypeToken$Bounds;->target:Z

    if-ne v5, v6, :cond_17

    .line 989
    iget-boolean v5, p0, Lcom/google/common/reflect/TypeToken$Bounds;->target:Z

    .line 992
    .end local v1    # "bound":Ljava/lang/reflect/Type;
    :goto_16
    return v5

    .line 987
    .restart local v1    # "bound":Ljava/lang/reflect/Type;
    :cond_17
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 992
    .end local v1    # "bound":Ljava/lang/reflect/Type;
    :cond_1a
    iget-boolean v5, p0, Lcom/google/common/reflect/TypeToken$Bounds;->target:Z

    if-nez v5, :cond_20

    const/4 v5, 0x1

    goto :goto_16

    :cond_20
    const/4 v5, 0x0

    goto :goto_16
.end method
