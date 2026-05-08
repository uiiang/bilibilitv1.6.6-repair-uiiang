.class public final Lcom/google/android/exoplayer2/upstream/Loader$LoadErrorAction;
.super Ljava/lang/Object;
.source "Loader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/upstream/Loader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LoadErrorAction"
.end annotation


# instance fields
.field private final retryDelayMillis:J

.field private final type:I


# direct methods
.method private constructor <init>(IJ)V
    .registers 4
    .param p1, "type"    # I
    .param p2, "retryDelayMillis"    # J

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 196
    iput p1, p0, Lcom/google/android/exoplayer2/upstream/Loader$LoadErrorAction;->type:I

    .line 197
    iput-wide p2, p0, Lcom/google/android/exoplayer2/upstream/Loader$LoadErrorAction;->retryDelayMillis:J

    .line 198
    return-void
.end method

.method synthetic constructor <init>(IJLcom/google/android/exoplayer2/upstream/Loader$1;)V
    .registers 5
    .param p1, "x0"    # I
    .param p2, "x1"    # J
    .param p4, "x2"    # Lcom/google/android/exoplayer2/upstream/Loader$1;

    .line 190
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/upstream/Loader$LoadErrorAction;-><init>(IJ)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/exoplayer2/upstream/Loader$LoadErrorAction;)I
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/upstream/Loader$LoadErrorAction;

    .line 190
    iget v0, p0, Lcom/google/android/exoplayer2/upstream/Loader$LoadErrorAction;->type:I

    return v0
.end method

.method static synthetic access$400(Lcom/google/android/exoplayer2/upstream/Loader$LoadErrorAction;)J
    .registers 3
    .param p0, "x0"    # Lcom/google/android/exoplayer2/upstream/Loader$LoadErrorAction;

    .line 190
    iget-wide v0, p0, Lcom/google/android/exoplayer2/upstream/Loader$LoadErrorAction;->retryDelayMillis:J

    return-wide v0
.end method


# virtual methods
.method public isRetry()Z
    .registers 3

    .line 202
    iget v0, p0, Lcom/google/android/exoplayer2/upstream/Loader$LoadErrorAction;->type:I

    const/4 v1, 0x1

    if-eqz v0, :cond_9

    if-ne v0, v1, :cond_8

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    :cond_9
    :goto_9
    return v1
.end method
