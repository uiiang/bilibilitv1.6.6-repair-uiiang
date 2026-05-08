.class public final Lcom/google/android/exoplayer2/upstream/cache/DefaultContentMetadata;
.super Ljava/lang/Object;
.source "DefaultContentMetadata.java"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/cache/ContentMetadata;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final EMPTY:Lcom/google/android/exoplayer2/upstream/cache/DefaultContentMetadata;


# instance fields
.field private hashCode:I

.field private final metadata:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 41
    new-instance v0, Lcom/google/android/exoplayer2/upstream/cache/DefaultContentMetadata;

    .line 42
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/upstream/cache/DefaultContentMetadata;-><init>(Ljava/util/Map;)V

    sput-object v0, Lcom/google/android/exoplayer2/upstream/cache/DefaultContentMetadata;->EMPTY:Lcom/google/android/exoplayer2/upstream/cache/DefaultContentMetadata;

    .line 41
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 49
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/upstream/cache/DefaultContentMetadata;-><init>(Ljava/util/Map;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;)V"
        }
    .end annotation

    .line 55
    .local p1, "metadata":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[B>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/DefaultContentMetadata;->metadata:Ljava/util/Map;

    .line 57
    return-void
.end method

.method private static addValues(Ljava/util/HashMap;Ljava/util/Map;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[B>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 165
    .local p0, "metadata":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[B>;"
    .local p1, "values":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 166
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/exoplayer2/upstream/cache/DefaultContentMetadata;->getBytes(Ljava/lang/Object;)[B

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    goto :goto_8

    .line 168
    :cond_26
    return-void
.end method

.method private static applyMutations(Ljava/util/Map;Lcom/google/android/exoplayer2/upstream/cache/ContentMetadataMutations;)Ljava/util/Map;
    .registers 4
    .param p1, "mutations"    # Lcom/google/android/exoplayer2/upstream/cache/ContentMetadataMutations;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;",
            "Lcom/google/android/exoplayer2/upstream/cache/ContentMetadataMutations;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation

    .line 152
    .local p0, "otherMetadata":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[B>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 153
    .local v0, "metadata":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[B>;"
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/upstream/cache/ContentMetadataMutations;->getRemovedValues()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/upstream/cache/DefaultContentMetadata;->removeValues(Ljava/util/HashMap;Ljava/util/List;)V

    .line 154
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/upstream/cache/ContentMetadataMutations;->getEditedValues()Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/upstream/cache/DefaultContentMetadata;->addValues(Ljava/util/HashMap;Ljava/util/Map;)V

    .line 155
    return-object v0
.end method

.method private static getBytes(Ljava/lang/Object;)[B
    .registers 4
    .param p0, "value"    # Ljava/lang/Object;

    .line 171
    instance-of v0, p0, Ljava/lang/Long;

    if-eqz v0, :cond_1a

    .line 172
    const/16 v0, 0x8

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    return-object v0

    .line 173
    :cond_1a
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_28

    .line 174
    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    sget-object v1, Lcom/google/common/base/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    return-object v0

    .line 175
    :cond_28
    instance-of v0, p0, [B

    if-eqz v0, :cond_30

    .line 176
    move-object v0, p0

    check-cast v0, [B

    return-object v0

    .line 178
    :cond_30
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method private static isMetadataEqual(Ljava/util/Map;Ljava/util/Map;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;)Z"
        }
    .end annotation

    .line 137
    .local p0, "first":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[B>;"
    .local p1, "second":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[B>;"
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_c

    .line 138
    return v2

    .line 140
    :cond_c
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_38

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 141
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;[B>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    .line 142
    .local v3, "value":[B
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    .line 143
    .local v4, "otherValue":[B
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v5

    if-nez v5, :cond_37

    .line 144
    return v2

    .line 146
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;[B>;"
    .end local v3    # "value":[B
    .end local v4    # "otherValue":[B
    :cond_37
    goto :goto_14

    .line 147
    :cond_38
    const/4 v0, 0x1

    return v0
.end method

.method private static removeValues(Ljava/util/HashMap;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[B>;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 159
    .local p0, "metadata":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[B>;"
    .local p1, "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_11

    .line 160
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 162
    .end local v0    # "i":I
    :cond_11
    return-void
.end method


# virtual methods
.method public final contains(Ljava/lang/String;)Z
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .line 110
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/DefaultContentMetadata;->metadata:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public copyWithMutationsApplied(Lcom/google/android/exoplayer2/upstream/cache/ContentMetadataMutations;)Lcom/google/android/exoplayer2/upstream/cache/DefaultContentMetadata;
    .registers 4
    .param p1, "mutations"    # Lcom/google/android/exoplayer2/upstream/cache/ContentMetadataMutations;

    .line 64
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/DefaultContentMetadata;->metadata:Ljava/util/Map;

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/upstream/cache/DefaultContentMetadata;->applyMutations(Ljava/util/Map;Lcom/google/android/exoplayer2/upstream/cache/ContentMetadataMutations;)Ljava/util/Map;

    move-result-object v0

    .line 65
    .local v0, "mutatedMetadata":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[B>;"
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/DefaultContentMetadata;->metadata:Ljava/util/Map;

    invoke-static {v1, v0}, Lcom/google/android/exoplayer2/upstream/cache/DefaultContentMetadata;->isMetadataEqual(Ljava/util/Map;Ljava/util/Map;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 66
    return-object p0

    .line 68
    :cond_f
    new-instance v1, Lcom/google/android/exoplayer2/upstream/cache/DefaultContentMetadata;

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer2/upstream/cache/DefaultContentMetadata;-><init>(Ljava/util/Map;)V

    return-object v1
.end method

.method public entrySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "[B>;>;"
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/DefaultContentMetadata;->metadata:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 115
    if-ne p0, p1, :cond_4

    .line 116
    const/4 v0, 0x1

    return v0

    .line 118
    :cond_4
    if-eqz p1, :cond_1d

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_11

    goto :goto_1d

    .line 121
    :cond_11
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/DefaultContentMetadata;->metadata:Ljava/util/Map;

    move-object v1, p1

    check-cast v1, Lcom/google/android/exoplayer2/upstream/cache/DefaultContentMetadata;

    iget-object v1, v1, Lcom/google/android/exoplayer2/upstream/cache/DefaultContentMetadata;->metadata:Ljava/util/Map;

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/upstream/cache/DefaultContentMetadata;->isMetadataEqual(Ljava/util/Map;Ljava/util/Map;)Z

    move-result v0

    return v0

    .line 119
    :cond_1d
    :goto_1d
    const/4 v0, 0x0

    return v0
.end method

.method public final get(Ljava/lang/String;J)J
    .registers 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # J

    .line 100
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/DefaultContentMetadata;->metadata:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 101
    .local v0, "bytes":[B
    if-eqz v0, :cond_13

    .line 102
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v1

    return-wide v1

    .line 104
    :cond_13
    return-wide p2
.end method

.method public final get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .line 90
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/DefaultContentMetadata;->metadata:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 91
    .local v0, "bytes":[B
    if-eqz v0, :cond_12

    .line 92
    new-instance v1, Ljava/lang/String;

    sget-object v2, Lcom/google/common/base/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v1

    .line 94
    :cond_12
    return-object p2
.end method

.method public final get(Ljava/lang/String;[B)[B
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # [B

    .line 79
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/DefaultContentMetadata;->metadata:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 80
    .local v0, "bytes":[B
    if-eqz v0, :cond_10

    .line 81
    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    return-object v1

    .line 83
    :cond_10
    return-object p2
.end method

.method public hashCode()I
    .registers 6

    .line 126
    iget v0, p0, Lcom/google/android/exoplayer2/upstream/cache/DefaultContentMetadata;->hashCode:I

    if-nez v0, :cond_34

    .line 127
    const/4 v0, 0x0

    .line 128
    .local v0, "result":I
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/DefaultContentMetadata;->metadata:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_32

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 129
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;[B>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    invoke-static {v4}, Ljava/util/Arrays;->hashCode([B)I

    move-result v4

    xor-int/2addr v3, v4

    add-int/2addr v0, v3

    .line 130
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;[B>;"
    goto :goto_f

    .line 131
    :cond_32
    iput v0, p0, Lcom/google/android/exoplayer2/upstream/cache/DefaultContentMetadata;->hashCode:I

    .line 133
    .end local v0    # "result":I
    :cond_34
    iget v0, p0, Lcom/google/android/exoplayer2/upstream/cache/DefaultContentMetadata;->hashCode:I

    return v0
.end method
