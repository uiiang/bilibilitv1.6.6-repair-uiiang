.class public final Lcom/google/common/base/Splitter$MapSplitter;
.super Ljava/lang/Object;
.source "Splitter.java"


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/Splitter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MapSplitter"
.end annotation


# static fields
.field private static final INVALID_ENTRY_MESSAGE:Ljava/lang/String; = "Chunk [%s] is not a valid entry"


# instance fields
.field private final entrySplitter:Lcom/google/common/base/Splitter;

.field private final outerSplitter:Lcom/google/common/base/Splitter;


# direct methods
.method private constructor <init>(Lcom/google/common/base/Splitter;Lcom/google/common/base/Splitter;)V
    .registers 4
    .param p1, "outerSplitter"    # Lcom/google/common/base/Splitter;
    .param p2, "entrySplitter"    # Lcom/google/common/base/Splitter;

    .prologue
    .line 465
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 466
    iput-object p1, p0, Lcom/google/common/base/Splitter$MapSplitter;->outerSplitter:Lcom/google/common/base/Splitter;

    .line 467
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/Splitter;

    iput-object v0, p0, Lcom/google/common/base/Splitter$MapSplitter;->entrySplitter:Lcom/google/common/base/Splitter;

    .line 468
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/base/Splitter;Lcom/google/common/base/Splitter;Lcom/google/common/base/Splitter$1;)V
    .registers 4
    .param p1, "x0"    # Lcom/google/common/base/Splitter;
    .param p2, "x1"    # Lcom/google/common/base/Splitter;
    .param p3, "x2"    # Lcom/google/common/base/Splitter$1;

    .prologue
    .line 460
    invoke-direct {p0, p1, p2}, Lcom/google/common/base/Splitter$MapSplitter;-><init>(Lcom/google/common/base/Splitter;Lcom/google/common/base/Splitter;)V

    return-void
.end method


# virtual methods
.method public split(Ljava/lang/CharSequence;)Ljava/util/Map;
    .registers 12
    .param p1, "sequence"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 482
    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    .line 483
    .local v4, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v6, p0, Lcom/google/common/base/Splitter$MapSplitter;->outerSplitter:Lcom/google/common/base/Splitter;

    invoke-virtual {v6, p1}, Lcom/google/common/base/Splitter;->split(Ljava/lang/CharSequence;)Ljava/lang/Iterable;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_61

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 484
    .local v0, "entry":Ljava/lang/String;
    iget-object v6, p0, Lcom/google/common/base/Splitter$MapSplitter;->entrySplitter:Lcom/google/common/base/Splitter;

    # invokes: Lcom/google/common/base/Splitter;->splittingIterator(Ljava/lang/CharSequence;)Ljava/util/Iterator;
    invoke-static {v6, v0}, Lcom/google/common/base/Splitter;->access$000(Lcom/google/common/base/Splitter;Ljava/lang/CharSequence;)Ljava/util/Iterator;

    move-result-object v1

    .line 486
    .local v1, "entryFields":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const-string v9, "Chunk [%s] is not a valid entry"

    invoke-static {v6, v9, v0}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 487
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 488
    .local v3, "key":Ljava/lang/String;
    invoke-interface {v4, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5d

    move v6, v7

    :goto_39
    const-string v9, "Duplicate key [%s] found."

    invoke-static {v6, v9, v3}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 490
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const-string v9, "Chunk [%s] is not a valid entry"

    invoke-static {v6, v9, v0}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 491
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 492
    .local v5, "value":Ljava/lang/String;
    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 494
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_5f

    move v6, v7

    :goto_57
    const-string v9, "Chunk [%s] is not a valid entry"

    invoke-static {v6, v9, v0}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    goto :goto_11

    .end local v5    # "value":Ljava/lang/String;
    :cond_5d
    move v6, v8

    .line 488
    goto :goto_39

    .restart local v5    # "value":Ljava/lang/String;
    :cond_5f
    move v6, v8

    .line 494
    goto :goto_57

    .line 496
    .end local v0    # "entry":Ljava/lang/String;
    .end local v1    # "entryFields":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v3    # "key":Ljava/lang/String;
    .end local v5    # "value":Ljava/lang/String;
    :cond_61
    invoke-static {v4}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v6

    return-object v6
.end method
