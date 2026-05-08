.class Lcom/google/common/cache/CacheBuilderSpec$ConcurrencyLevelParser;
.super Lcom/google/common/cache/CacheBuilderSpec$IntegerParser;
.source "CacheBuilderSpec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/cache/CacheBuilderSpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ConcurrencyLevelParser"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 354
    invoke-direct {p0}, Lcom/google/common/cache/CacheBuilderSpec$IntegerParser;-><init>()V

    return-void
.end method


# virtual methods
.method protected parseInteger(Lcom/google/common/cache/CacheBuilderSpec;I)V
    .registers 6
    .param p1, "spec"    # Lcom/google/common/cache/CacheBuilderSpec;
    .param p2, "value"    # I

    .prologue
    .line 357
    iget-object v0, p1, Lcom/google/common/cache/CacheBuilderSpec;->concurrencyLevel:Ljava/lang/Integer;

    if-nez v0, :cond_13

    const/4 v0, 0x1

    :goto_5
    const-string v1, "concurrency level was already set to "

    iget-object v2, p1, Lcom/google/common/cache/CacheBuilderSpec;->concurrencyLevel:Ljava/lang/Integer;

    invoke-static {v0, v1, v2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 361
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p1, Lcom/google/common/cache/CacheBuilderSpec;->concurrencyLevel:Ljava/lang/Integer;

    .line 362
    return-void

    .line 357
    :cond_13
    const/4 v0, 0x0

    goto :goto_5
.end method
