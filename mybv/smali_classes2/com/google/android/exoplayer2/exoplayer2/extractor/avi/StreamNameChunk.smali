.class final Lcom/google/android/exoplayer2/extractor/avi/StreamNameChunk;
.super Ljava/lang/Object;
.source "StreamNameChunk.java"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/avi/AviChunk;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public final name:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "name"    # Ljava/lang/String;

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/avi/StreamNameChunk;->name:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public static parseFrom(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/extractor/avi/StreamNameChunk;
    .registers 3
    .param p0, "body"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 32
    new-instance v0, Lcom/google/android/exoplayer2/extractor/avi/StreamNameChunk;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/extractor/avi/StreamNameChunk;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getType()I
    .registers 2

    .line 43
    const v0, 0x6e727473

    return v0
.end method
