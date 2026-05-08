.class Lcom/google/common/cache/LocalCache$StrongEntry;
.super Lcom/google/common/cache/LocalCache$AbstractReferenceEntry;
.source "LocalCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/cache/LocalCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "StrongEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/cache/LocalCache$AbstractReferenceEntry",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final hash:I

.field final key:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field final next:Lcom/google/common/cache/LocalCache$ReferenceEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/cache/LocalCache$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field volatile valueReference:Lcom/google/common/cache/LocalCache$ValueReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/cache/LocalCache$ValueReference",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;ILcom/google/common/cache/LocalCache$ReferenceEntry;)V
    .registers 5
    .param p2, "hash"    # I
    .param p3    # Lcom/google/common/cache/LocalCache$ReferenceEntry;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lcom/google/common/cache/LocalCache$ReferenceEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1080
    .local p0, "this":Lcom/google/common/cache/LocalCache$StrongEntry;, "Lcom/google/common/cache/LocalCache$StrongEntry<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p3, "next":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    invoke-direct {p0}, Lcom/google/common/cache/LocalCache$AbstractReferenceEntry;-><init>()V

    .line 1095
    invoke-static {}, Lcom/google/common/cache/LocalCache;->unset()Lcom/google/common/cache/LocalCache$ValueReference;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/cache/LocalCache$StrongEntry;->valueReference:Lcom/google/common/cache/LocalCache$ValueReference;

    .line 1081
    iput-object p1, p0, Lcom/google/common/cache/LocalCache$StrongEntry;->key:Ljava/lang/Object;

    .line 1082
    iput p2, p0, Lcom/google/common/cache/LocalCache$StrongEntry;->hash:I

    .line 1083
    iput-object p3, p0, Lcom/google/common/cache/LocalCache$StrongEntry;->next:Lcom/google/common/cache/LocalCache$ReferenceEntry;

    .line 1084
    return-void
.end method


# virtual methods
.method public getHash()I
    .registers 2

    .prologue
    .line 1109
    .local p0, "this":Lcom/google/common/cache/LocalCache$StrongEntry;, "Lcom/google/common/cache/LocalCache$StrongEntry<TK;TV;>;"
    iget v0, p0, Lcom/google/common/cache/LocalCache$StrongEntry;->hash:I

    return v0
.end method

.method public getKey()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 1088
    .local p0, "this":Lcom/google/common/cache/LocalCache$StrongEntry;, "Lcom/google/common/cache/LocalCache$StrongEntry<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$StrongEntry;->key:Ljava/lang/Object;

    return-object v0
.end method

.method public getNext()Lcom/google/common/cache/LocalCache$ReferenceEntry;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/cache/LocalCache$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1114
    .local p0, "this":Lcom/google/common/cache/LocalCache$StrongEntry;, "Lcom/google/common/cache/LocalCache$StrongEntry<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$StrongEntry;->next:Lcom/google/common/cache/LocalCache$ReferenceEntry;

    return-object v0
.end method

.method public getValueReference()Lcom/google/common/cache/LocalCache$ValueReference;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/cache/LocalCache$ValueReference",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1099
    .local p0, "this":Lcom/google/common/cache/LocalCache$StrongEntry;, "Lcom/google/common/cache/LocalCache$StrongEntry<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$StrongEntry;->valueReference:Lcom/google/common/cache/LocalCache$ValueReference;

    return-object v0
.end method

.method public setValueReference(Lcom/google/common/cache/LocalCache$ValueReference;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/LocalCache$ValueReference",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1104
    .local p0, "this":Lcom/google/common/cache/LocalCache$StrongEntry;, "Lcom/google/common/cache/LocalCache$StrongEntry<TK;TV;>;"
    .local p1, "valueReference":Lcom/google/common/cache/LocalCache$ValueReference;, "Lcom/google/common/cache/LocalCache$ValueReference<TK;TV;>;"
    iput-object p1, p0, Lcom/google/common/cache/LocalCache$StrongEntry;->valueReference:Lcom/google/common/cache/LocalCache$ValueReference;

    .line 1105
    return-void
.end method
