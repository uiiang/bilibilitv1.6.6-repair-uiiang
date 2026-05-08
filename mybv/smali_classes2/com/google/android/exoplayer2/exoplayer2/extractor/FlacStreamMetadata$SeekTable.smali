.class public Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata$SeekTable;
.super Ljava/lang/Object;
.source "FlacStreamMetadata.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SeekTable"
.end annotation


# instance fields
.field public final pointOffsets:[J

.field public final pointSampleNumbers:[J


# direct methods
.method public constructor <init>([J[J)V
    .registers 3
    .param p1, "pointSampleNumbers"    # [J
    .param p2, "pointOffsets"    # [J

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata$SeekTable;->pointSampleNumbers:[J

    .line 65
    iput-object p2, p0, Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata$SeekTable;->pointOffsets:[J

    .line 66
    return-void
.end method
