.class abstract Lcom/google/common/cache/CacheBuilderSpec$DurationParser;
.super Ljava/lang/Object;
.source "CacheBuilderSpec.java"

# interfaces
.implements Lcom/google/common/cache/CacheBuilderSpec$ValueParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/cache/CacheBuilderSpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "DurationParser"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 411
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parse(Lcom/google/common/cache/CacheBuilderSpec;Ljava/lang/String;Ljava/lang/String;)V
    .registers 16
    .param p1, "spec"    # Lcom/google/common/cache/CacheBuilderSpec;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 416
    if-eqz p3, :cond_46

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_46

    move v5, v6

    :goto_c
    const-string v8, "value of key %s omitted"

    invoke-static {v5, v8, p2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 418
    :try_start_11
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {p3, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 420
    .local v3, "lastChar":C
    sparse-switch v3, :sswitch_data_66

    .line 434
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v8, "key %s invalid format.  was %s, must end with one of [dDhHmMsS]"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object p2, v9, v10

    const/4 v10, 0x1

    aput-object p3, v9, v10

    # invokes: Lcom/google/common/cache/CacheBuilderSpec;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    invoke-static {v8, v9}, Lcom/google/common/cache/CacheBuilderSpec;->access$000(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_33
    .catch Ljava/lang/NumberFormatException; {:try_start_11 .. :try_end_33} :catch_33

    .line 441
    .end local v3    # "lastChar":C
    :catch_33
    move-exception v2

    .line 442
    .local v2, "e":Ljava/lang/NumberFormatException;
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v8, "key %s value set to %s, must be integer"

    new-array v9, v11, [Ljava/lang/Object;

    aput-object p2, v9, v7

    aput-object p3, v9, v6

    # invokes: Lcom/google/common/cache/CacheBuilderSpec;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    invoke-static {v8, v9}, Lcom/google/common/cache/CacheBuilderSpec;->access$000(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :cond_46
    move v5, v7

    .line 416
    goto :goto_c

    .line 422
    .restart local v3    # "lastChar":C
    :sswitch_48
    :try_start_48
    sget-object v4, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    .line 439
    .local v4, "timeUnit":Ljava/util/concurrent/TimeUnit;
    :goto_4a
    const/4 v5, 0x0

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {p3, v5, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 440
    .local v0, "duration":J
    invoke-virtual {p0, p1, v0, v1, v4}, Lcom/google/common/cache/CacheBuilderSpec$DurationParser;->parseDuration(Lcom/google/common/cache/CacheBuilderSpec;JLjava/util/concurrent/TimeUnit;)V

    .line 445
    return-void

    .line 425
    .end local v0    # "duration":J
    .end local v4    # "timeUnit":Ljava/util/concurrent/TimeUnit;
    :sswitch_5d
    sget-object v4, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    .line 426
    .restart local v4    # "timeUnit":Ljava/util/concurrent/TimeUnit;
    goto :goto_4a

    .line 428
    .end local v4    # "timeUnit":Ljava/util/concurrent/TimeUnit;
    :sswitch_60
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    .line 429
    .restart local v4    # "timeUnit":Ljava/util/concurrent/TimeUnit;
    goto :goto_4a

    .line 431
    .end local v4    # "timeUnit":Ljava/util/concurrent/TimeUnit;
    :sswitch_63
    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;
    :try_end_65
    .catch Ljava/lang/NumberFormatException; {:try_start_48 .. :try_end_65} :catch_33

    .line 432
    .restart local v4    # "timeUnit":Ljava/util/concurrent/TimeUnit;
    goto :goto_4a

    .line 420
    :sswitch_data_66
    .sparse-switch
        0x64 -> :sswitch_48
        0x68 -> :sswitch_5d
        0x6d -> :sswitch_60
        0x73 -> :sswitch_63
    .end sparse-switch
.end method

.method protected abstract parseDuration(Lcom/google/common/cache/CacheBuilderSpec;JLjava/util/concurrent/TimeUnit;)V
.end method
