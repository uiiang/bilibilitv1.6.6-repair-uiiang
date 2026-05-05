.class public final Lcom/google/android/exoplayer2/analytics/PlayerId;
.super Ljava/lang/Object;
.source "PlayerId.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/analytics/PlayerId$LogSessionIdApi31;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final UNSET:Lcom/google/android/exoplayer2/analytics/PlayerId;


# instance fields
.field private final logSessionIdApi31:Lcom/google/android/exoplayer2/analytics/PlayerId$LogSessionIdApi31;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 41
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x1f

    if-ge v0, v1, :cond_c

    new-instance v0, Lcom/google/android/exoplayer2/analytics/PlayerId;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/analytics/PlayerId;-><init>()V

    goto :goto_13

    :cond_c
    new-instance v0, Lcom/google/android/exoplayer2/analytics/PlayerId;

    sget-object v1, Lcom/google/android/exoplayer2/analytics/PlayerId$LogSessionIdApi31;->UNSET:Lcom/google/android/exoplayer2/analytics/PlayerId$LogSessionIdApi31;

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/analytics/PlayerId;-><init>(Lcom/google/android/exoplayer2/analytics/PlayerId$LogSessionIdApi31;)V

    :goto_13
    sput-object v0, Lcom/google/android/exoplayer2/analytics/PlayerId;->UNSET:Lcom/google/android/exoplayer2/analytics/PlayerId;

    .line 40
    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 47
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Lcom/google/android/exoplayer2/analytics/PlayerId$LogSessionIdApi31;

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/analytics/PlayerId;-><init>(Lcom/google/android/exoplayer2/analytics/PlayerId$LogSessionIdApi31;)V

    .line 48
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x1f

    if-ge v0, v1, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/media/metrics/LogSessionId;)V
    .registers 3
    .param p1, "logSessionId"    # Landroid/media/metrics/LogSessionId;

    .line 58
    new-instance v0, Lcom/google/android/exoplayer2/analytics/PlayerId$LogSessionIdApi31;

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/analytics/PlayerId$LogSessionIdApi31;-><init>(Landroid/media/metrics/LogSessionId;)V

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/analytics/PlayerId;-><init>(Lcom/google/android/exoplayer2/analytics/PlayerId$LogSessionIdApi31;)V

    .line 59
    return-void
.end method

.method private constructor <init>(Lcom/google/android/exoplayer2/analytics/PlayerId$LogSessionIdApi31;)V
    .registers 2
    .param p1, "logSessionIdApi31"    # Lcom/google/android/exoplayer2/analytics/PlayerId$LogSessionIdApi31;

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/google/android/exoplayer2/analytics/PlayerId;->logSessionIdApi31:Lcom/google/android/exoplayer2/analytics/PlayerId$LogSessionIdApi31;

    .line 63
    return-void
.end method


# virtual methods
.method public getLogSessionId()Landroid/media/metrics/LogSessionId;
    .registers 2

    .line 68
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/PlayerId;->logSessionIdApi31:Lcom/google/android/exoplayer2/analytics/PlayerId$LogSessionIdApi31;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/analytics/PlayerId$LogSessionIdApi31;

    iget-object v0, v0, Lcom/google/android/exoplayer2/analytics/PlayerId$LogSessionIdApi31;->logSessionId:Landroid/media/metrics/LogSessionId;

    return-object v0
.end method
