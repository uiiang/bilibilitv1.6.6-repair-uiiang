.class final Lcom/google/common/cache/CacheBuilder$1;
.super Ljava/lang/Object;
.source "CacheBuilder.java"

# interfaces
.implements Lcom/google/common/cache/AbstractCache$StatsCounter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/cache/CacheBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public recordEviction()V
    .registers 1

    .prologue
    .line 168
    return-void
.end method

.method public recordHits(I)V
    .registers 2
    .param p1, "count"    # I

    .prologue
    .line 156
    return-void
.end method

.method public recordLoadException(J)V
    .registers 3
    .param p1, "loadTime"    # J

    .prologue
    .line 165
    return-void
.end method

.method public recordLoadSuccess(J)V
    .registers 3
    .param p1, "loadTime"    # J

    .prologue
    .line 162
    return-void
.end method

.method public recordMisses(I)V
    .registers 2
    .param p1, "count"    # I

    .prologue
    .line 159
    return-void
.end method

.method public snapshot()Lcom/google/common/cache/CacheStats;
    .registers 2

    .prologue
    .line 172
    sget-object v0, Lcom/google/common/cache/CacheBuilder;->EMPTY_STATS:Lcom/google/common/cache/CacheStats;

    return-object v0
.end method
