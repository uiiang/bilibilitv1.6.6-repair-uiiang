.class public abstract Lcom/google/common/cache/ForwardingLoadingCache;
.super Lcom/google/common/cache/ForwardingCache;
.source "ForwardingLoadingCache.java"

# interfaces
.implements Lcom/google/common/cache/LoadingCache;


# annotations
.annotation build Lcom/google/common/annotations/GwtIncompatible;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/cache/ForwardingLoadingCache$SimpleForwardingLoadingCache;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/cache/ForwardingCache",
        "<TK;TV;>;",
        "Lcom/google/common/cache/LoadingCache",
        "<TK;TV;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 38
    .local p0, "this":Lcom/google/common/cache/ForwardingLoadingCache;, "Lcom/google/common/cache/ForwardingLoadingCache<TK;TV;>;"
    invoke-direct {p0}, Lcom/google/common/cache/ForwardingCache;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .prologue
    .line 60
    .local p0, "this":Lcom/google/common/cache/ForwardingLoadingCache;, "Lcom/google/common/cache/ForwardingLoadingCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0}, Lcom/google/common/cache/ForwardingLoadingCache;->delegate()Lcom/google/common/cache/LoadingCache;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/cache/LoadingCache;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic delegate()Lcom/google/common/cache/Cache;
    .registers 2

    .prologue
    .line 33
    .local p0, "this":Lcom/google/common/cache/ForwardingLoadingCache;, "Lcom/google/common/cache/ForwardingLoadingCache<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/cache/ForwardingLoadingCache;->delegate()Lcom/google/common/cache/LoadingCache;

    move-result-object v0

    return-object v0
.end method

.method protected abstract delegate()Lcom/google/common/cache/LoadingCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/cache/LoadingCache",
            "<TK;TV;>;"
        }
    .end annotation
.end method

.method protected bridge synthetic delegate()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 33
    .local p0, "this":Lcom/google/common/cache/ForwardingLoadingCache;, "Lcom/google/common/cache/ForwardingLoadingCache<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/cache/ForwardingLoadingCache;->delegate()Lcom/google/common/cache/LoadingCache;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .prologue
    .line 45
    .local p0, "this":Lcom/google/common/cache/ForwardingLoadingCache;, "Lcom/google/common/cache/ForwardingLoadingCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0}, Lcom/google/common/cache/ForwardingLoadingCache;->delegate()Lcom/google/common/cache/LoadingCache;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/cache/LoadingCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getAll(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableMap;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+TK;>;)",
            "Lcom/google/common/collect/ImmutableMap",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .prologue
    .line 55
    .local p0, "this":Lcom/google/common/cache/ForwardingLoadingCache;, "Lcom/google/common/cache/ForwardingLoadingCache<TK;TV;>;"
    .local p1, "keys":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TK;>;"
    invoke-virtual {p0}, Lcom/google/common/cache/ForwardingLoadingCache;->delegate()Lcom/google/common/cache/LoadingCache;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/cache/LoadingCache;->getAll(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method

.method public getUnchecked(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .prologue
    .line 50
    .local p0, "this":Lcom/google/common/cache/ForwardingLoadingCache;, "Lcom/google/common/cache/ForwardingLoadingCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0}, Lcom/google/common/cache/ForwardingLoadingCache;->delegate()Lcom/google/common/cache/LoadingCache;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/cache/LoadingCache;->getUnchecked(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public refresh(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)V"
        }
    .end annotation

    .prologue
    .line 65
    .local p0, "this":Lcom/google/common/cache/ForwardingLoadingCache;, "Lcom/google/common/cache/ForwardingLoadingCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0}, Lcom/google/common/cache/ForwardingLoadingCache;->delegate()Lcom/google/common/cache/LoadingCache;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/cache/LoadingCache;->refresh(Ljava/lang/Object;)V

    .line 66
    return-void
.end method
