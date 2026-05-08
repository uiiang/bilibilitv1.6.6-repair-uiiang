.class public final Lcom/google/android/exoplayer2/upstream/Allocation;
.super Ljava/lang/Object;
.source "Allocation.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public final data:[B

.field public final offset:I


# direct methods
.method public constructor <init>([BI)V
    .registers 3
    .param p1, "data"    # [B
    .param p2, "offset"    # I

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/Allocation;->data:[B

    .line 47
    iput p2, p0, Lcom/google/android/exoplayer2/upstream/Allocation;->offset:I

    .line 48
    return-void
.end method
