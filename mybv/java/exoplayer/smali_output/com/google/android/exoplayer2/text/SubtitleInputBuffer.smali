.class public Lcom/google/android/exoplayer2/text/SubtitleInputBuffer;
.super Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;
.source "SubtitleInputBuffer.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public subsampleOffsetUs:J


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 39
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;-><init>(I)V

    .line 40
    return-void
.end method
