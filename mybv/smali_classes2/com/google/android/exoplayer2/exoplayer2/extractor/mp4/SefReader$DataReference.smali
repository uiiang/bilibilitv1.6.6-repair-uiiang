.class final Lcom/google/android/exoplayer2/extractor/mp4/SefReader$DataReference;
.super Ljava/lang/Object;
.source "SefReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/extractor/mp4/SefReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DataReference"
.end annotation


# instance fields
.field public final dataType:I

.field public final size:I

.field public final startOffset:J


# direct methods
.method public constructor <init>(IJI)V
    .registers 5
    .param p1, "dataType"    # I
    .param p2, "startOffset"    # J
    .param p4, "size"    # I

    .line 280
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 281
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/SefReader$DataReference;->dataType:I

    .line 282
    iput-wide p2, p0, Lcom/google/android/exoplayer2/extractor/mp4/SefReader$DataReference;->startOffset:J

    .line 283
    iput p4, p0, Lcom/google/android/exoplayer2/extractor/mp4/SefReader$DataReference;->size:I

    .line 284
    return-void
.end method
