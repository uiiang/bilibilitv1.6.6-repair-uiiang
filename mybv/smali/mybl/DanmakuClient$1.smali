.class Lmybl/DanmakuClient$1;
.super Ljava/lang/Object;
.source "DanmakuClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmybl/DanmakuClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmybl/DanmakuClient;


# direct methods
.method constructor <init>(Lmybl/DanmakuClient;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lmybl/DanmakuClient$1;->this$0:Lmybl/DanmakuClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 99
    iget-object v0, p0, Lmybl/DanmakuClient$1;->this$0:Lmybl/DanmakuClient;

    # getter for: Lmybl/DanmakuClient;->mMergeLock:Ljava/lang/Object;
    invoke-static {v0}, Lmybl/DanmakuClient;->access$000(Lmybl/DanmakuClient;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 100
    :try_start_7
    iget-object v0, p0, Lmybl/DanmakuClient$1;->this$0:Lmybl/DanmakuClient;

    const/4 v2, 0x0

    # setter for: Lmybl/DanmakuClient;->mMergeFlushScheduled:Z
    invoke-static {v0, v2}, Lmybl/DanmakuClient;->access$102(Lmybl/DanmakuClient;Z)Z

    .line 101
    iget-object v0, p0, Lmybl/DanmakuClient$1;->this$0:Lmybl/DanmakuClient;

    # getter for: Lmybl/DanmakuClient;->mActiveMergeGroup:Lmybl/DanmakuClient$LiveMergeGroup;
    invoke-static {v0}, Lmybl/DanmakuClient;->access$200(Lmybl/DanmakuClient;)Lmybl/DanmakuClient$LiveMergeGroup;

    move-result-object v0

    .line 102
    if-nez v0, :cond_17

    .line 103
    monitor-exit v1

    .line 114
    :goto_16
    return-void

    .line 105
    :cond_17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 107
    iget-wide v4, v0, Lmybl/DanmakuClient$LiveMergeGroup;->lastTimeMs:J

    sub-long v4, v2, v4

    const-wide/16 v6, 0x7d0

    cmp-long v4, v4, v6

    if-gtz v4, :cond_2e

    iget-wide v4, v0, Lmybl/DanmakuClient$LiveMergeGroup;->groupStartMs:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0xfa0

    cmp-long v0, v2, v4

    if-ltz v0, :cond_38

    .line 109
    :cond_2e
    iget-object v0, p0, Lmybl/DanmakuClient$1;->this$0:Lmybl/DanmakuClient;

    # invokes: Lmybl/DanmakuClient;->flushActiveMergeGroupLocked()V
    invoke-static {v0}, Lmybl/DanmakuClient;->access$300(Lmybl/DanmakuClient;)V

    .line 110
    monitor-exit v1

    goto :goto_16

    .line 113
    :catchall_35
    move-exception v0

    monitor-exit v1
    :try_end_37
    .catchall {:try_start_7 .. :try_end_37} :catchall_35

    throw v0

    .line 112
    :cond_38
    :try_start_38
    iget-object v0, p0, Lmybl/DanmakuClient$1;->this$0:Lmybl/DanmakuClient;

    # invokes: Lmybl/DanmakuClient;->scheduleMergeFlushLocked()V
    invoke-static {v0}, Lmybl/DanmakuClient;->access$400(Lmybl/DanmakuClient;)V

    .line 113
    monitor-exit v1
    :try_end_3e
    .catchall {:try_start_38 .. :try_end_3e} :catchall_35

    goto :goto_16
.end method
