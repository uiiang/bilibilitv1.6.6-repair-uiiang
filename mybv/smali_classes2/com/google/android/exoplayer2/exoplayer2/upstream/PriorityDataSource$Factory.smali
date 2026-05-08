.class public final Lcom/google/android/exoplayer2/upstream/PriorityDataSource$Factory;
.super Ljava/lang/Object;
.source "PriorityDataSource.java"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/DataSource$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/upstream/PriorityDataSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation


# instance fields
.field private final priority:I

.field private final priorityTaskManager:Lcom/google/android/exoplayer2/util/PriorityTaskManager;

.field private final upstreamFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/util/PriorityTaskManager;I)V
    .registers 4
    .param p1, "upstreamFactory"    # Lcom/google/android/exoplayer2/upstream/DataSource$Factory;
    .param p2, "priorityTaskManager"    # Lcom/google/android/exoplayer2/util/PriorityTaskManager;
    .param p3, "priority"    # I

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/PriorityDataSource$Factory;->upstreamFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    .line 67
    iput-object p2, p0, Lcom/google/android/exoplayer2/upstream/PriorityDataSource$Factory;->priorityTaskManager:Lcom/google/android/exoplayer2/util/PriorityTaskManager;

    .line 68
    iput p3, p0, Lcom/google/android/exoplayer2/upstream/PriorityDataSource$Factory;->priority:I

    .line 69
    return-void
.end method


# virtual methods
.method public bridge synthetic createDataSource()Lcom/google/android/exoplayer2/upstream/DataSource;
    .registers 2

    .line 48
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/upstream/PriorityDataSource$Factory;->createDataSource()Lcom/google/android/exoplayer2/upstream/PriorityDataSource;

    move-result-object v0

    return-object v0
.end method

.method public createDataSource()Lcom/google/android/exoplayer2/upstream/PriorityDataSource;
    .registers 5

    .line 73
    new-instance v0, Lcom/google/android/exoplayer2/upstream/PriorityDataSource;

    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/PriorityDataSource$Factory;->upstreamFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    .line 74
    invoke-interface {v1}, Lcom/google/android/exoplayer2/upstream/DataSource$Factory;->createDataSource()Lcom/google/android/exoplayer2/upstream/DataSource;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/PriorityDataSource$Factory;->priorityTaskManager:Lcom/google/android/exoplayer2/util/PriorityTaskManager;

    iget v3, p0, Lcom/google/android/exoplayer2/upstream/PriorityDataSource$Factory;->priority:I

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/exoplayer2/upstream/PriorityDataSource;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/util/PriorityTaskManager;I)V

    .line 73
    return-object v0
.end method
