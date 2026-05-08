.class final Lcom/google/common/base/Absent;
.super Lcom/google/common/base/Optional;
.source "Absent.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/base/Optional",
        "<TT;>;"
    }
.end annotation


# static fields
.field static final INSTANCE:Lcom/google/common/base/Absent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Absent",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 29
    new-instance v0, Lcom/google/common/base/Absent;

    invoke-direct {v0}, Lcom/google/common/base/Absent;-><init>()V

    sput-object v0, Lcom/google/common/base/Absent;->INSTANCE:Lcom/google/common/base/Absent;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 36
    .local p0, "this":Lcom/google/common/base/Absent;, "Lcom/google/common/base/Absent<TT;>;"
    invoke-direct {p0}, Lcom/google/common/base/Optional;-><init>()V

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 98
    .local p0, "this":Lcom/google/common/base/Absent;, "Lcom/google/common/base/Absent<TT;>;"
    sget-object v0, Lcom/google/common/base/Absent;->INSTANCE:Lcom/google/common/base/Absent;

    return-object v0
.end method

.method static withType()Lcom/google/common/base/Optional;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/base/Optional",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 33
    sget-object v0, Lcom/google/common/base/Absent;->INSTANCE:Lcom/google/common/base/Absent;

    return-object v0
.end method


# virtual methods
.method public asSet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 73
    .local p0, "this":Lcom/google/common/base/Absent;, "Lcom/google/common/base/Absent<TT;>;"
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "object"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 84
    .local p0, "this":Lcom/google/common/base/Absent;, "Lcom/google/common/base/Absent<TT;>;"
    if-ne p1, p0, :cond_4

    const/4 v0, 0x1

    :goto_3
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public get()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 45
    .local p0, "this":Lcom/google/common/base/Absent;, "Lcom/google/common/base/Absent<TT;>;"
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Optional.get() cannot be called on an absent value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 89
    .local p0, "this":Lcom/google/common/base/Absent;, "Lcom/google/common/base/Absent<TT;>;"
    const v0, 0x79a31aac

    return v0
.end method

.method public isPresent()Z
    .registers 2

    .prologue
    .line 40
    .local p0, "this":Lcom/google/common/base/Absent;, "Lcom/google/common/base/Absent<TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public or(Lcom/google/common/base/Optional;)Lcom/google/common/base/Optional;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/Optional",
            "<+TT;>;)",
            "Lcom/google/common/base/Optional",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 56
    .local p0, "this":Lcom/google/common/base/Absent;, "Lcom/google/common/base/Absent<TT;>;"
    .local p1, "secondChoice":Lcom/google/common/base/Optional;, "Lcom/google/common/base/Optional<+TT;>;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/Optional;

    return-object v0
.end method

.method public or(Lcom/google/common/base/Supplier;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/Supplier",
            "<+TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 61
    .local p0, "this":Lcom/google/common/base/Absent;, "Lcom/google/common/base/Absent<TT;>;"
    .local p1, "supplier":Lcom/google/common/base/Supplier;, "Lcom/google/common/base/Supplier<+TT;>;"
    invoke-interface {p1}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "use Optional.orNull() instead of a Supplier that returns null"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public or(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    .prologue
    .line 50
    .local p0, "this":Lcom/google/common/base/Absent;, "Lcom/google/common/base/Absent<TT;>;"
    .local p1, "defaultValue":Ljava/lang/Object;, "TT;"
    const-string v0, "use Optional.orNull() instead of Optional.or(null)"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public orNull()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 68
    .local p0, "this":Lcom/google/common/base/Absent;, "Lcom/google/common/base/Absent<TT;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 94
    .local p0, "this":Lcom/google/common/base/Absent;, "Lcom/google/common/base/Absent<TT;>;"
    const-string v0, "Optional.absent()"

    return-object v0
.end method

.method public transform(Lcom/google/common/base/Function;)Lcom/google/common/base/Optional;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/base/Function",
            "<-TT;TV;>;)",
            "Lcom/google/common/base/Optional",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 78
    .local p0, "this":Lcom/google/common/base/Absent;, "Lcom/google/common/base/Absent<TT;>;"
    .local p1, "function":Lcom/google/common/base/Function;, "Lcom/google/common/base/Function<-TT;TV;>;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v0

    return-object v0
.end method
