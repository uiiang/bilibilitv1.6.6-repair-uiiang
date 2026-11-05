.class final Lbl/PlayUrlPrefetch$WarmTask;
.super Ljava/lang/Object;
.source "PlayUrlPrefetch.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbl/PlayUrlPrefetch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "WarmTask"
.end annotation


# instance fields
.field private final cid:J

.field private final gen:I

.field private final key:Ljava/lang/String;

.field private final next:Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

.field private final quality:I

.field private final response:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/String;ILcom/bilibili/tv/player/basic/context/ResolveResourceParams;Ljava/lang/Object;IJ)V
    .locals 0

    .prologue
    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 186
    iput-object p1, p0, Lbl/PlayUrlPrefetch$WarmTask;->key:Ljava/lang/String;

    .line 187
    iput p2, p0, Lbl/PlayUrlPrefetch$WarmTask;->gen:I

    .line 188
    iput-object p3, p0, Lbl/PlayUrlPrefetch$WarmTask;->next:Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    .line 189
    iput-object p4, p0, Lbl/PlayUrlPrefetch$WarmTask;->response:Ljava/lang/Object;

    .line 190
    iput p5, p0, Lbl/PlayUrlPrefetch$WarmTask;->quality:I

    .line 191
    iput-wide p6, p0, Lbl/PlayUrlPrefetch$WarmTask;->cid:J

    .line 192
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 197
    :try_start_0
    iget v0, p0, Lbl/PlayUrlPrefetch$WarmTask;->gen:I

    # getter for: Lbl/PlayUrlPrefetch;->GENERATION:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {}, Lbl/PlayUrlPrefetch;->access$100()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-eq v0, v1, :cond_2a

    .line 198
    const-string v0, "NextPrefetch"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[WARM_SKIP] stale generation, key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lbl/PlayUrlPrefetch$WarmTask;->key:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_26
    .catchall {:try_start_0 .. :try_end_26} :catchall_39

    .line 205
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 207
    :goto_29
    return-void

    .line 201
    :cond_2a
    :try_start_2a
    iget-object v0, p0, Lbl/PlayUrlPrefetch$WarmTask;->next:Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    iget-object v1, p0, Lbl/PlayUrlPrefetch$WarmTask;->response:Ljava/lang/Object;

    iget v2, p0, Lbl/PlayUrlPrefetch$WarmTask;->quality:I

    iget-wide v4, p0, Lbl/PlayUrlPrefetch$WarmTask;->cid:J

    # invokes: Lbl/PlayUrlPrefetch;->warmSync(Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;Ljava/lang/Object;IJ)V
    invoke-static {v0, v1, v2, v4, v5}, Lbl/PlayUrlPrefetch;->access$200(Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;Ljava/lang/Object;IJ)V
    :try_end_35
    .catchall {:try_start_2a .. :try_end_35} :catchall_39

    .line 205
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    goto :goto_29

    :catchall_39
    move-exception v0

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 206
    throw v0
.end method
