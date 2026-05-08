.class public final Lcom/google/android/exoplayer2/source/dash/BaseUrlExclusionList;
.super Ljava/lang/Object;
.source "BaseUrlExclusionList.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final excludedPriorities:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final excludedServiceLocations:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final random:Ljava/util/Random;

.field private final selectionsTaken:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;",
            "Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$fyxDHfz3hA5wz9LunlAhNpFsO64(Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;)I
    .registers 2

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/source/dash/BaseUrlExclusionList;->compareBaseUrl(Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;)I

    move-result p0

    return p0
.end method

.method public constructor <init>()V
    .registers 2

    .line 55
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/source/dash/BaseUrlExclusionList;-><init>(Ljava/util/Random;)V

    .line 56
    return-void
.end method

.method constructor <init>(Ljava/util/Random;)V
    .registers 3
    .param p1, "random"    # Ljava/util/Random;

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/dash/BaseUrlExclusionList;->selectionsTaken:Ljava/util/Map;

    .line 61
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/BaseUrlExclusionList;->random:Ljava/util/Random;

    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/dash/BaseUrlExclusionList;->excludedServiceLocations:Ljava/util/Map;

    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/dash/BaseUrlExclusionList;->excludedPriorities:Ljava/util/Map;

    .line 64
    return-void
.end method

.method private static addExclusion(Ljava/lang/Object;JLjava/util/Map;)V
    .registers 6
    .param p1, "excludeUntilMs"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J",
            "Ljava/util/Map<",
            "TT;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 195
    .local p0, "toExclude":Ljava/lang/Object;, "TT;"
    .local p3, "currentExclusions":Ljava/util/Map;, "Ljava/util/Map<TT;Ljava/lang/Long;>;"
    invoke-interface {p3, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 196
    invoke-interface {p3, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    .line 198
    :cond_1a
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p3, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    return-void
.end method

.method private applyExclusions(Ljava/util/List;)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;",
            ">;"
        }
    .end annotation

    .line 162
    .local p1, "baseUrls":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;>;"
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 163
    .local v0, "nowMs":J
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/dash/BaseUrlExclusionList;->excludedServiceLocations:Ljava/util/Map;

    invoke-static {v0, v1, v2}, Lcom/google/android/exoplayer2/source/dash/BaseUrlExclusionList;->removeExpiredExclusions(JLjava/util/Map;)V

    .line 164
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/dash/BaseUrlExclusionList;->excludedPriorities:Ljava/util/Map;

    invoke-static {v0, v1, v2}, Lcom/google/android/exoplayer2/source/dash/BaseUrlExclusionList;->removeExpiredExclusions(JLjava/util/Map;)V

    .line 165
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 166
    .local v2, "includedBaseUrls":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_14
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_3e

    .line 167
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;

    .line 168
    .local v4, "baseUrl":Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;
    iget-object v5, p0, Lcom/google/android/exoplayer2/source/dash/BaseUrlExclusionList;->excludedServiceLocations:Ljava/util/Map;

    iget-object v6, v4, Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;->serviceLocation:Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3b

    iget-object v5, p0, Lcom/google/android/exoplayer2/source/dash/BaseUrlExclusionList;->excludedPriorities:Ljava/util/Map;

    iget v6, v4, Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;->priority:I

    .line 169
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3b

    .line 170
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 166
    .end local v4    # "baseUrl":Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;
    :cond_3b
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    .line 173
    .end local v3    # "i":I
    :cond_3e
    return-object v2
.end method

.method private static compareBaseUrl(Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;)I
    .registers 5
    .param p0, "a"    # Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;
    .param p1, "b"    # Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;

    .line 215
    iget v0, p0, Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;->priority:I

    iget v1, p1, Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;->priority:I

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    .line 216
    .local v0, "compare":I
    if-eqz v0, :cond_c

    move v1, v0

    goto :goto_14

    :cond_c
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;->serviceLocation:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;->serviceLocation:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    :goto_14
    return v1
.end method

.method public static getPriorityCount(Ljava/util/List;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;",
            ">;)I"
        }
    .end annotation

    .line 145
    .local p0, "baseUrls":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 146
    .local v0, "priorities":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1e

    .line 147
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;

    iget v2, v2, Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;->priority:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 146
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 149
    .end local v1    # "i":I
    :cond_1e
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    return v1
.end method

.method private static removeExpiredExclusions(JLjava/util/Map;)V
    .registers 9
    .param p0, "nowMs"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(J",
            "Ljava/util/Map<",
            "TT;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 202
    .local p2, "exclusions":Ljava/util/Map;, "Ljava/util/Map<TT;Ljava/lang/Long;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 203
    .local v0, "expiredExclusions":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 204
    .local v2, "entries":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TT;Ljava/lang/Long;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v5, v3, p0

    if-gtz v5, :cond_2e

    .line 205
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    .end local v2    # "entries":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TT;Ljava/lang/Long;>;"
    :cond_2e
    goto :goto_d

    .line 208
    :cond_2f
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_30
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_40

    .line 209
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    add-int/lit8 v1, v1, 0x1

    goto :goto_30

    .line 211
    .end local v1    # "i":I
    :cond_40
    return-void
.end method

.method private selectWeighted(Ljava/util/List;)Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;",
            ">;)",
            "Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;"
        }
    .end annotation

    .line 177
    .local p1, "candidates":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;>;"
    const/4 v0, 0x0

    .line 178
    .local v0, "totalWeight":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_14

    .line 179
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;

    iget v2, v2, Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;->weight:I

    add-int/2addr v0, v2

    .line 178
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 181
    .end local v1    # "i":I
    :cond_14
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/dash/BaseUrlExclusionList;->random:Ljava/util/Random;

    invoke-virtual {v1, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    .line 182
    .local v1, "randomChoice":I
    const/4 v0, 0x0

    .line 183
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1c
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_31

    .line 184
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;

    .line 185
    .local v3, "baseUrl":Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;
    iget v4, v3, Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;->weight:I

    add-int/2addr v0, v4

    .line 186
    if-ge v1, v0, :cond_2e

    .line 187
    return-object v3

    .line 183
    .end local v3    # "baseUrl":Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;
    :cond_2e
    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    .line 190
    .end local v2    # "i":I
    :cond_31
    invoke-static {p1}, Lcom/google/common/collect/Iterables;->getLast(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;

    return-object v2
.end method


# virtual methods
.method public exclude(Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;J)V
    .registers 8
    .param p1, "baseUrlToExclude"    # Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;
    .param p2, "exclusionDurationMs"    # J

    .line 73
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    add-long/2addr v0, p2

    .line 74
    .local v0, "excludeUntilMs":J
    iget-object v2, p1, Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;->serviceLocation:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/dash/BaseUrlExclusionList;->excludedServiceLocations:Ljava/util/Map;

    invoke-static {v2, v0, v1, v3}, Lcom/google/android/exoplayer2/source/dash/BaseUrlExclusionList;->addExclusion(Ljava/lang/Object;JLjava/util/Map;)V

    .line 75
    iget v2, p1, Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;->priority:I

    const/high16 v3, -0x80000000

    if-eq v2, v3, :cond_1d

    .line 76
    iget v2, p1, Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;->priority:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/dash/BaseUrlExclusionList;->excludedPriorities:Ljava/util/Map;

    invoke-static {v2, v0, v1, v3}, Lcom/google/android/exoplayer2/source/dash/BaseUrlExclusionList;->addExclusion(Ljava/lang/Object;JLjava/util/Map;)V

    .line 78
    :cond_1d
    return-void
.end method

.method public getPriorityCountAfterExclusion(Ljava/util/List;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;",
            ">;)I"
        }
    .end annotation

    .line 130
    .local p1, "baseUrls":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 131
    .local v0, "priorities":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/dash/BaseUrlExclusionList;->applyExclusions(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 132
    .local v1, "includedBaseUrls":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_22

    .line 133
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;

    iget v3, v3, Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;->priority:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 132
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 135
    .end local v2    # "i":I
    :cond_22
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    return v2
.end method

.method public reset()V
    .registers 2

    .line 154
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/BaseUrlExclusionList;->excludedServiceLocations:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 155
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/BaseUrlExclusionList;->excludedPriorities:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 156
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/BaseUrlExclusionList;->selectionsTaken:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 157
    return-void
.end method

.method public selectBaseUrl(Ljava/util/List;)Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;",
            ">;)",
            "Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;"
        }
    .end annotation

    .line 92
    .local p1, "baseUrls":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;>;"
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/dash/BaseUrlExclusionList;->applyExclusions(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 93
    .local v0, "includedBaseUrls":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_13

    .line 94
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/common/collect/Iterables;->getFirst(Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;

    return-object v1

    .line 97
    :cond_13
    new-instance v1, Lcom/google/android/exoplayer2/source/dash/BaseUrlExclusionList$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/source/dash/BaseUrlExclusionList$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 99
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 100
    .local v1, "candidateKeys":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;

    iget v3, v3, Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;->priority:I

    .line 101
    .local v3, "lowestPriority":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2a
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_5b

    .line 102
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;

    .line 103
    .local v5, "baseUrl":Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;
    iget v6, v5, Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;->priority:I

    if-eq v3, v6, :cond_48

    .line 104
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_5b

    .line 106
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;

    return-object v2

    .line 110
    :cond_48
    new-instance v6, Landroid/util/Pair;

    iget-object v7, v5, Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;->serviceLocation:Ljava/lang/String;

    iget v8, v5, Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;->weight:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    .end local v5    # "baseUrl":Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;
    add-int/lit8 v4, v4, 0x1

    goto :goto_2a

    .line 113
    .end local v4    # "i":I
    :cond_5b
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/dash/BaseUrlExclusionList;->selectionsTaken:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;

    .line 114
    .local v4, "baseUrl":Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;
    if-nez v4, :cond_76

    .line 116
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    invoke-interface {v0, v2, v5}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/android/exoplayer2/source/dash/BaseUrlExclusionList;->selectWeighted(Ljava/util/List;)Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;

    move-result-object v4

    .line 118
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/dash/BaseUrlExclusionList;->selectionsTaken:Ljava/util/Map;

    invoke-interface {v2, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    :cond_76
    return-object v4
.end method
