.class final Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder$Id3Header;
.super Ljava/lang/Object;
.source "Id3Decoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Id3Header"
.end annotation


# instance fields
.field private final framesSize:I

.field private final isUnsynchronized:Z

.field private final majorVersion:I


# direct methods
.method public constructor <init>(IZI)V
    .registers 4
    .param p1, "majorVersion"    # I
    .param p2, "isUnsynchronized"    # Z
    .param p3, "framesSize"    # I

    .line 891
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 892
    iput p1, p0, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder$Id3Header;->majorVersion:I

    .line 893
    iput-boolean p2, p0, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder$Id3Header;->isUnsynchronized:Z

    .line 894
    iput p3, p0, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder$Id3Header;->framesSize:I

    .line 895
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder$Id3Header;)I
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder$Id3Header;

    .line 885
    iget v0, p0, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder$Id3Header;->majorVersion:I

    return v0
.end method

.method static synthetic access$100(Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder$Id3Header;)I
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder$Id3Header;

    .line 885
    iget v0, p0, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder$Id3Header;->framesSize:I

    return v0
.end method

.method static synthetic access$200(Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder$Id3Header;)Z
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder$Id3Header;

    .line 885
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder$Id3Header;->isUnsynchronized:Z

    return v0
.end method
