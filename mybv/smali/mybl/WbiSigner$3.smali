.class Lmybl/WbiSigner$3;
.super Ljava/lang/Object;
.source "WbiSigner.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmybl/WbiSigner;->signAsync(Ljava/util/TreeMap;Lmybl/WbiSigner$WbiSignCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmybl/WbiSigner;

.field final synthetic val$callback:Lmybl/WbiSigner$WbiSignCallback;

.field final synthetic val$requestParams:Ljava/util/TreeMap;


# direct methods
.method constructor <init>(Lmybl/WbiSigner;Lmybl/WbiSigner$WbiSignCallback;Ljava/util/TreeMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 164
    iput-object p1, p0, Lmybl/WbiSigner$3;->this$0:Lmybl/WbiSigner;

    iput-object p2, p0, Lmybl/WbiSigner$3;->val$callback:Lmybl/WbiSigner$WbiSignCallback;

    iput-object p3, p0, Lmybl/WbiSigner$3;->val$requestParams:Ljava/util/TreeMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 169
    iget-object v1, p0, Lmybl/WbiSigner$3;->this$0:Lmybl/WbiSigner;

    monitor-enter v1

    .line 170
    :try_start_3
    iget-object v0, p0, Lmybl/WbiSigner$3;->this$0:Lmybl/WbiSigner;

    # getter for: Lmybl/WbiSigner;->mixinKey:Ljava/lang/String;
    invoke-static {v0}, Lmybl/WbiSigner;->access$000(Lmybl/WbiSigner;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1d

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v0, p0, Lmybl/WbiSigner$3;->this$0:Lmybl/WbiSigner;

    # getter for: Lmybl/WbiSigner;->lastUpdateTime:J
    invoke-static {v0}, Lmybl/WbiSigner;->access$200(Lmybl/WbiSigner;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x36ee80

    cmp-long v0, v2, v4

    if-lez v0, :cond_3c

    .line 171
    :cond_1d
    iget-object v0, p0, Lmybl/WbiSigner$3;->this$0:Lmybl/WbiSigner;

    invoke-virtual {v0}, Lmybl/WbiSigner;->updateKeysBlocking()Z

    move-result v0

    if-nez v0, :cond_3c

    .line 172
    const-string v0, "WbiSigner"

    const-string v2, "Failed to get WBI keys (async)"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    iget-object v0, p0, Lmybl/WbiSigner$3;->this$0:Lmybl/WbiSigner;

    # getter for: Lmybl/WbiSigner;->mainHandler:Landroid/os/Handler;
    invoke-static {v0}, Lmybl/WbiSigner;->access$100(Lmybl/WbiSigner;)Landroid/os/Handler;

    move-result-object v0

    new-instance v2, Lmybl/WbiSigner$3$1;

    invoke-direct {v2, p0}, Lmybl/WbiSigner$3$1;-><init>(Lmybl/WbiSigner$3;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 179
    monitor-exit v1

    .line 190
    :goto_3b
    return-void

    .line 182
    :cond_3c
    iget-object v0, p0, Lmybl/WbiSigner$3;->this$0:Lmybl/WbiSigner;

    iget-object v2, p0, Lmybl/WbiSigner$3;->val$requestParams:Ljava/util/TreeMap;

    iget-object v3, p0, Lmybl/WbiSigner$3;->this$0:Lmybl/WbiSigner;

    # getter for: Lmybl/WbiSigner;->mixinKey:Ljava/lang/String;
    invoke-static {v3}, Lmybl/WbiSigner;->access$000(Lmybl/WbiSigner;)Ljava/lang/String;

    move-result-object v3

    # invokes: Lmybl/WbiSigner;->sign(Ljava/util/TreeMap;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v0, v2, v3}, Lmybl/WbiSigner;->access$300(Lmybl/WbiSigner;Ljava/util/TreeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 183
    monitor-exit v1
    :try_end_4b
    .catchall {:try_start_3 .. :try_end_4b} :catchall_5a

    .line 184
    iget-object v1, p0, Lmybl/WbiSigner$3;->this$0:Lmybl/WbiSigner;

    # getter for: Lmybl/WbiSigner;->mainHandler:Landroid/os/Handler;
    invoke-static {v1}, Lmybl/WbiSigner;->access$100(Lmybl/WbiSigner;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lmybl/WbiSigner$3$2;

    invoke-direct {v2, p0, v0}, Lmybl/WbiSigner$3$2;-><init>(Lmybl/WbiSigner$3;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_3b

    .line 183
    :catchall_5a
    move-exception v0

    :try_start_5b
    monitor-exit v1
    :try_end_5c
    .catchall {:try_start_5b .. :try_end_5c} :catchall_5a

    throw v0
.end method
