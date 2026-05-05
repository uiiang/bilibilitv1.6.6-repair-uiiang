.class final Lcom/google/android/exoplayer2/util/ListenerSet$ListenerHolder;
.super Ljava/lang/Object;
.source "ListenerSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/util/ListenerSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ListenerHolder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private flagsBuilder:Lcom/google/android/exoplayer2/util/FlagSet$Builder;

.field public final listener:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private needsIterationFinishedEvent:Z

.field private released:Z


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 323
    .local p0, "this":Lcom/google/android/exoplayer2/util/ListenerSet$ListenerHolder;, "Lcom/google/android/exoplayer2/util/ListenerSet$ListenerHolder<TT;>;"
    .local p1, "listener":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 324
    iput-object p1, p0, Lcom/google/android/exoplayer2/util/ListenerSet$ListenerHolder;->listener:Ljava/lang/Object;

    .line 325
    new-instance v0, Lcom/google/android/exoplayer2/util/FlagSet$Builder;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/util/FlagSet$Builder;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/util/ListenerSet$ListenerHolder;->flagsBuilder:Lcom/google/android/exoplayer2/util/FlagSet$Builder;

    .line 326
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "other"    # Ljava/lang/Object;

    .line 359
    .local p0, "this":Lcom/google/android/exoplayer2/util/ListenerSet$ListenerHolder;, "Lcom/google/android/exoplayer2/util/ListenerSet$ListenerHolder<TT;>;"
    if-ne p0, p1, :cond_4

    .line 360
    const/4 v0, 0x1

    return v0

    .line 362
    :cond_4
    if-eqz p1, :cond_1d

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_11

    goto :goto_1d

    .line 365
    :cond_11
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/ListenerSet$ListenerHolder;->listener:Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, Lcom/google/android/exoplayer2/util/ListenerSet$ListenerHolder;

    iget-object v1, v1, Lcom/google/android/exoplayer2/util/ListenerSet$ListenerHolder;->listener:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 363
    :cond_1d
    :goto_1d
    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .registers 2

    .line 370
    .local p0, "this":Lcom/google/android/exoplayer2/util/ListenerSet$ListenerHolder;, "Lcom/google/android/exoplayer2/util/ListenerSet$ListenerHolder<TT;>;"
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/ListenerSet$ListenerHolder;->listener:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public invoke(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V
    .registers 4
    .param p1, "eventFlag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/android/exoplayer2/util/ListenerSet$Event<",
            "TT;>;)V"
        }
    .end annotation

    .line 337
    .local p0, "this":Lcom/google/android/exoplayer2/util/ListenerSet$ListenerHolder;, "Lcom/google/android/exoplayer2/util/ListenerSet$ListenerHolder<TT;>;"
    .local p2, "event":Lcom/google/android/exoplayer2/util/ListenerSet$Event;, "Lcom/google/android/exoplayer2/util/ListenerSet$Event<TT;>;"
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/util/ListenerSet$ListenerHolder;->released:Z

    if-nez v0, :cond_14

    .line 338
    const/4 v0, -0x1

    if-eq p1, v0, :cond_c

    .line 339
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/ListenerSet$ListenerHolder;->flagsBuilder:Lcom/google/android/exoplayer2/util/FlagSet$Builder;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/util/FlagSet$Builder;->add(I)Lcom/google/android/exoplayer2/util/FlagSet$Builder;

    .line 341
    :cond_c
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/util/ListenerSet$ListenerHolder;->needsIterationFinishedEvent:Z

    .line 342
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/ListenerSet$ListenerHolder;->listener:Ljava/lang/Object;

    invoke-interface {p2, v0}, Lcom/google/android/exoplayer2/util/ListenerSet$Event;->invoke(Ljava/lang/Object;)V

    .line 344
    :cond_14
    return-void
.end method

.method public iterationFinished(Lcom/google/android/exoplayer2/util/ListenerSet$IterationFinishedEvent;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/util/ListenerSet$IterationFinishedEvent<",
            "TT;>;)V"
        }
    .end annotation

    .line 347
    .local p0, "this":Lcom/google/android/exoplayer2/util/ListenerSet$ListenerHolder;, "Lcom/google/android/exoplayer2/util/ListenerSet$ListenerHolder<TT;>;"
    .local p1, "event":Lcom/google/android/exoplayer2/util/ListenerSet$IterationFinishedEvent;, "Lcom/google/android/exoplayer2/util/ListenerSet$IterationFinishedEvent<TT;>;"
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/util/ListenerSet$ListenerHolder;->released:Z

    if-nez v0, :cond_1d

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/util/ListenerSet$ListenerHolder;->needsIterationFinishedEvent:Z

    if-eqz v0, :cond_1d

    .line 350
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/ListenerSet$ListenerHolder;->flagsBuilder:Lcom/google/android/exoplayer2/util/FlagSet$Builder;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/FlagSet$Builder;->build()Lcom/google/android/exoplayer2/util/FlagSet;

    move-result-object v0

    .line 351
    .local v0, "flagsToNotify":Lcom/google/android/exoplayer2/util/FlagSet;
    new-instance v1, Lcom/google/android/exoplayer2/util/FlagSet$Builder;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/util/FlagSet$Builder;-><init>()V

    iput-object v1, p0, Lcom/google/android/exoplayer2/util/ListenerSet$ListenerHolder;->flagsBuilder:Lcom/google/android/exoplayer2/util/FlagSet$Builder;

    .line 352
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/exoplayer2/util/ListenerSet$ListenerHolder;->needsIterationFinishedEvent:Z

    .line 353
    iget-object v1, p0, Lcom/google/android/exoplayer2/util/ListenerSet$ListenerHolder;->listener:Ljava/lang/Object;

    invoke-interface {p1, v1, v0}, Lcom/google/android/exoplayer2/util/ListenerSet$IterationFinishedEvent;->invoke(Ljava/lang/Object;Lcom/google/android/exoplayer2/util/FlagSet;)V

    .line 355
    .end local v0    # "flagsToNotify":Lcom/google/android/exoplayer2/util/FlagSet;
    :cond_1d
    return-void
.end method

.method public release(Lcom/google/android/exoplayer2/util/ListenerSet$IterationFinishedEvent;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/util/ListenerSet$IterationFinishedEvent<",
            "TT;>;)V"
        }
    .end annotation

    .line 329
    .local p0, "this":Lcom/google/android/exoplayer2/util/ListenerSet$ListenerHolder;, "Lcom/google/android/exoplayer2/util/ListenerSet$ListenerHolder<TT;>;"
    .local p1, "event":Lcom/google/android/exoplayer2/util/ListenerSet$IterationFinishedEvent;, "Lcom/google/android/exoplayer2/util/ListenerSet$IterationFinishedEvent<TT;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/util/ListenerSet$ListenerHolder;->released:Z

    .line 330
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/util/ListenerSet$ListenerHolder;->needsIterationFinishedEvent:Z

    if-eqz v0, :cond_15

    .line 331
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/util/ListenerSet$ListenerHolder;->needsIterationFinishedEvent:Z

    .line 332
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/ListenerSet$ListenerHolder;->listener:Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/exoplayer2/util/ListenerSet$ListenerHolder;->flagsBuilder:Lcom/google/android/exoplayer2/util/FlagSet$Builder;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/FlagSet$Builder;->build()Lcom/google/android/exoplayer2/util/FlagSet;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/google/android/exoplayer2/util/ListenerSet$IterationFinishedEvent;->invoke(Ljava/lang/Object;Lcom/google/android/exoplayer2/util/FlagSet;)V

    .line 334
    :cond_15
    return-void
.end method
