.class final Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$EsdsData;
.super Ljava/lang/Object;
.source "AtomParsers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "EsdsData"
.end annotation


# instance fields
.field private final bitrate:J

.field private final initializationData:[B

.field private final mimeType:Ljava/lang/String;

.field private final peakBitrate:J


# direct methods
.method public constructor <init>(Ljava/lang/String;[BJJ)V
    .registers 7
    .param p1, "mimeType"    # Ljava/lang/String;
    .param p2, "initializationData"    # [B
    .param p3, "bitrate"    # J
    .param p5, "peakBitrate"    # J

    .line 2086
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2087
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$EsdsData;->mimeType:Ljava/lang/String;

    .line 2088
    iput-object p2, p0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$EsdsData;->initializationData:[B

    .line 2089
    iput-wide p3, p0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$EsdsData;->bitrate:J

    .line 2090
    iput-wide p5, p0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$EsdsData;->peakBitrate:J

    .line 2091
    return-void
.end method

.method static synthetic access$300(Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$EsdsData;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$EsdsData;

    .line 2076
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$EsdsData;->mimeType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$EsdsData;)[B
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$EsdsData;

    .line 2076
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$EsdsData;->initializationData:[B

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$EsdsData;)J
    .registers 3
    .param p0, "x0"    # Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$EsdsData;

    .line 2076
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$EsdsData;->peakBitrate:J

    return-wide v0
.end method

.method static synthetic access$600(Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$EsdsData;)J
    .registers 3
    .param p0, "x0"    # Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$EsdsData;

    .line 2076
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$EsdsData;->bitrate:J

    return-wide v0
.end method
