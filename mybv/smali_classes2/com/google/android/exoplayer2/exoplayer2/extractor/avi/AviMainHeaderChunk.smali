.class final Lcom/google/android/exoplayer2/extractor/avi/AviMainHeaderChunk;
.super Ljava/lang/Object;
.source "AviMainHeaderChunk.java"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/avi/AviChunk;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final AVIF_HAS_INDEX:I = 0x10


# instance fields
.field public final flags:I

.field public final frameDurationUs:I

.field public final streams:I

.field public final totalFrames:I


# direct methods
.method private constructor <init>(IIII)V
    .registers 5
    .param p1, "frameDurationUs"    # I
    .param p2, "flags"    # I
    .param p3, "totalFrames"    # I
    .param p4, "streams"    # I

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/avi/AviMainHeaderChunk;->frameDurationUs:I

    .line 51
    iput p2, p0, Lcom/google/android/exoplayer2/extractor/avi/AviMainHeaderChunk;->flags:I

    .line 52
    iput p3, p0, Lcom/google/android/exoplayer2/extractor/avi/AviMainHeaderChunk;->totalFrames:I

    .line 53
    iput p4, p0, Lcom/google/android/exoplayer2/extractor/avi/AviMainHeaderChunk;->streams:I

    .line 54
    return-void
.end method

.method public static parseFrom(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/extractor/avi/AviMainHeaderChunk;
    .registers 6
    .param p0, "body"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 34
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLittleEndianInt()I

    move-result v0

    .line 35
    .local v0, "microSecPerFrame":I
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 36
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLittleEndianInt()I

    move-result v1

    .line 37
    .local v1, "flags":I
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLittleEndianInt()I

    move-result v2

    .line 38
    .local v2, "totalFrames":I
    const/4 v3, 0x4

    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 39
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLittleEndianInt()I

    move-result v3

    .line 40
    .local v3, "streams":I
    const/16 v4, 0xc

    invoke-virtual {p0, v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 41
    new-instance v4, Lcom/google/android/exoplayer2/extractor/avi/AviMainHeaderChunk;

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/google/android/exoplayer2/extractor/avi/AviMainHeaderChunk;-><init>(IIII)V

    return-object v4
.end method


# virtual methods
.method public getType()I
    .registers 2

    .line 58
    const v0, 0x68697661

    return v0
.end method

.method public hasIndex()Z
    .registers 3

    .line 62
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/avi/AviMainHeaderChunk;->flags:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method
