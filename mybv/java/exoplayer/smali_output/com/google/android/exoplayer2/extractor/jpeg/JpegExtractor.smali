.class public final Lcom/google/android/exoplayer2/extractor/jpeg/JpegExtractor;
.super Ljava/lang/Object;
.source "JpegExtractor.java"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/Extractor;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final EXIF_HEADER:J = 0x45786966L

.field private static final EXIF_ID_CODE_LENGTH:I = 0x6

.field private static final HEADER_XMP_APP1:Ljava/lang/String; = "http://ns.adobe.com/xap/1.0/"

.field private static final IMAGE_TRACK_ID:I = 0x400

.field private static final MARKER_APP0:I = 0xffe0

.field private static final MARKER_APP1:I = 0xffe1

.field private static final MARKER_SOI:I = 0xffd8

.field private static final MARKER_SOS:I = 0xffda

.field private static final STATE_ENDED:I = 0x6

.field private static final STATE_READING_MARKER:I = 0x0

.field private static final STATE_READING_MOTION_PHOTO_VIDEO:I = 0x5

.field private static final STATE_READING_SEGMENT:I = 0x2

.field private static final STATE_READING_SEGMENT_LENGTH:I = 0x1

.field private static final STATE_SNIFFING_MOTION_PHOTO_VIDEO:I = 0x4


# instance fields
.field private extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

.field private lastExtractorInput:Lcom/google/android/exoplayer2/extractor/ExtractorInput;

.field private marker:I

.field private motionPhotoMetadata:Lcom/google/android/exoplayer2/metadata/mp4/MotionPhotoMetadata;

.field private mp4Extractor:Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;

.field private mp4ExtractorStartOffsetExtractorInput:Lcom/google/android/exoplayer2/extractor/jpeg/StartOffsetExtractorInput;

.field private mp4StartPosition:J

.field private final scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

.field private segmentLength:I

.field private state:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/jpeg/JpegExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 105
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/jpeg/JpegExtractor;->mp4StartPosition:J

    .line 106
    return-void
.end method

.method private advancePeekPositionToNextSegment(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)V
    .registers 5
    .param p1, "input"    # Lcom/google/android/exoplayer2/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 200
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/jpeg/JpegExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset(I)V

    .line 201
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/jpeg/JpegExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {p1, v0, v2, v1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->peekFully([BII)V

    .line 202
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/jpeg/JpegExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v0

    sub-int/2addr v0, v1

    .line 203
    .local v0, "segmentLength":I
    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->advancePeekPosition(I)V

    .line 204
    return-void
.end method

.method private endReadingWithImageTrack()V
    .registers 5

    .line 278
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/extractor/jpeg/JpegExtractor;->outputImageTrack([Lcom/google/android/exoplayer2/metadata/Metadata$Entry;)V

    .line 279
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/jpeg/JpegExtractor;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->endTracks()V

    .line 280
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/jpeg/JpegExtractor;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    new-instance v1, Lcom/google/android/exoplayer2/extractor/SeekMap$Unseekable;

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {v1, v2, v3}, Lcom/google/android/exoplayer2/extractor/SeekMap$Unseekable;-><init>(J)V

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->seekMap(Lcom/google/android/exoplayer2/extractor/SeekMap;)V

    .line 281
    const/4 v0, 0x6

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/jpeg/JpegExtractor;->state:I

    .line 282
    return-void
.end method

.method private static getMotionPhotoMetadata(Ljava/lang/String;J)Lcom/google/android/exoplayer2/metadata/mp4/MotionPhotoMetadata;
    .registers 7
    .param p0, "xmpString"    # Ljava/lang/String;
    .param p1, "inputLength"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 311
    const-wide/16 v0, -0x1

    const/4 v2, 0x0

    cmp-long v3, p1, v0

    if-nez v3, :cond_8

    .line 312
    return-object v2

    .line 317
    :cond_8
    nop

    .line 318
    invoke-static {p0}, Lcom/google/android/exoplayer2/extractor/jpeg/XmpMotionPhotoDescriptionParser;->parse(Ljava/lang/String;)Lcom/google/android/exoplayer2/extractor/jpeg/MotionPhotoDescription;

    move-result-object v0

    .line 319
    .local v0, "motionPhotoDescription":Lcom/google/android/exoplayer2/extractor/jpeg/MotionPhotoDescription;
    if-nez v0, :cond_10

    .line 320
    return-object v2

    .line 322
    :cond_10
    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/extractor/jpeg/MotionPhotoDescription;->getMotionPhotoMetadata(J)Lcom/google/android/exoplayer2/metadata/mp4/MotionPhotoMetadata;

    move-result-object v1

    return-object v1
.end method

.method private varargs outputImageTrack([Lcom/google/android/exoplayer2/metadata/Metadata$Entry;)V
    .registers 5
    .param p1, "metadataEntries"    # [Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    .line 285
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/jpeg/JpegExtractor;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    .line 286
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    const/16 v1, 0x400

    const/4 v2, 0x4

    invoke-interface {v0, v1, v2}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->track(II)Lcom/google/android/exoplayer2/extractor/TrackOutput;

    move-result-object v0

    .line 287
    .local v0, "imageTrackOutput":Lcom/google/android/exoplayer2/extractor/TrackOutput;
    new-instance v1, Lcom/google/android/exoplayer2/Format$Builder;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/Format$Builder;-><init>()V

    .line 289
    const-string v2, "image/jpeg"

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/Format$Builder;->setContainerMimeType(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v1

    new-instance v2, Lcom/google/android/exoplayer2/metadata/Metadata;

    invoke-direct {v2, p1}, Lcom/google/android/exoplayer2/metadata/Metadata;-><init>([Lcom/google/android/exoplayer2/metadata/Metadata$Entry;)V

    .line 290
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/Format$Builder;->setMetadata(Lcom/google/android/exoplayer2/metadata/Metadata;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v1

    .line 291
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/Format$Builder;->build()Lcom/google/android/exoplayer2/Format;

    move-result-object v1

    .line 287
    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->format(Lcom/google/android/exoplayer2/Format;)V

    .line 292
    return-void
.end method

.method private peekMarker(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)I
    .registers 5
    .param p1, "input"    # Lcom/google/android/exoplayer2/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 194
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/jpeg/JpegExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset(I)V

    .line 195
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/jpeg/JpegExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {p1, v0, v2, v1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->peekFully([BII)V

    .line 196
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/jpeg/JpegExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v0

    return v0
.end method

.method private readMarker(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)V
    .registers 7
    .param p1, "input"    # Lcom/google/android/exoplayer2/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 207
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/jpeg/JpegExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset(I)V

    .line 208
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/jpeg/JpegExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {p1, v0, v2, v1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->readFully([BII)V

    .line 209
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/jpeg/JpegExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/jpeg/JpegExtractor;->marker:I

    .line 210
    const v1, 0xffda

    if-ne v0, v1, :cond_2d

    .line 211
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/jpeg/JpegExtractor;->mp4StartPosition:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_29

    .line 212
    const/4 v0, 0x4

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/jpeg/JpegExtractor;->state:I

    goto :goto_3f

    .line 214
    :cond_29
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/jpeg/JpegExtractor;->endReadingWithImageTrack()V

    goto :goto_3f

    .line 216
    :cond_2d
    const v1, 0xffd0

    if-lt v0, v1, :cond_37

    const v1, 0xffd9

    if-le v0, v1, :cond_3f

    :cond_37
    const v1, 0xff01

    if-eq v0, v1, :cond_3f

    .line 217
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/jpeg/JpegExtractor;->state:I

    .line 219
    :cond_3f
    :goto_3f
    return-void
.end method

.method private readSegment(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)V
    .registers 7
    .param p1, "input"    # Lcom/google/android/exoplayer2/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 229
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/jpeg/JpegExtractor;->marker:I

    const v1, 0xffe1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_3f

    .line 230
    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget v1, p0, Lcom/google/android/exoplayer2/extractor/jpeg/JpegExtractor;->segmentLength:I

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>(I)V

    .line 231
    .local v0, "payload":Lcom/google/android/exoplayer2/util/ParsableByteArray;
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v1

    iget v3, p0, Lcom/google/android/exoplayer2/extractor/jpeg/JpegExtractor;->segmentLength:I

    invoke-interface {p1, v1, v2, v3}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->readFully([BII)V

    .line 232
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/jpeg/JpegExtractor;->motionPhotoMetadata:Lcom/google/android/exoplayer2/metadata/mp4/MotionPhotoMetadata;

    if-nez v1, :cond_3e

    .line 233
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readNullTerminatedString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "http://ns.adobe.com/xap/1.0/"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 234
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readNullTerminatedString()Ljava/lang/String;

    move-result-object v1

    .line 235
    .local v1, "xmpString":Ljava/lang/String;
    if-eqz v1, :cond_3e

    .line 236
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getLength()J

    move-result-wide v3

    invoke-static {v1, v3, v4}, Lcom/google/android/exoplayer2/extractor/jpeg/JpegExtractor;->getMotionPhotoMetadata(Ljava/lang/String;J)Lcom/google/android/exoplayer2/metadata/mp4/MotionPhotoMetadata;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/exoplayer2/extractor/jpeg/JpegExtractor;->motionPhotoMetadata:Lcom/google/android/exoplayer2/metadata/mp4/MotionPhotoMetadata;

    .line 237
    if-eqz v3, :cond_3e

    .line 238
    iget-wide v3, v3, Lcom/google/android/exoplayer2/metadata/mp4/MotionPhotoMetadata;->videoStartPosition:J

    iput-wide v3, p0, Lcom/google/android/exoplayer2/extractor/jpeg/JpegExtractor;->mp4StartPosition:J

    .line 242
    .end local v0    # "payload":Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .end local v1    # "xmpString":Ljava/lang/String;
    :cond_3e
    goto :goto_44

    .line 243
    :cond_3f
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/jpeg/JpegExtractor;->segmentLength:I

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    .line 245
    :goto_44
    iput v2, p0, Lcom/google/android/exoplayer2/extractor/jpeg/JpegExtractor;->state:I

    .line 246
    return-void
.end method

.method private readSegmentLength(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)V
    .registers 5
    .param p1, "input"    # Lcom/google/android/exoplayer2/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 222
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/jpeg/JpegExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset(I)V

    .line 223
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/jpeg/JpegExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {p1, v0, v2, v1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->readFully([BII)V

    .line 224
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/jpeg/JpegExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v0

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/jpeg/JpegExtractor;->segmentLength:I

    .line 225
    iput v1, p0, Lcom/google/android/exoplayer2/extractor/jpeg/JpegExtractor;->state:I

    .line 226
    return-void
.end method

.method private sniffMotionPhotoVideo(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)V
    .registers 8
    .param p1, "input"    # Lcom/google/android/exoplayer2/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 250
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/jpeg/JpegExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 252
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v0

    .line 251
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {p1, v0, v1, v2, v2}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->peekFully([BIIZ)Z

    move-result v0

    .line 253
    .local v0, "peekedData":Z
    if-nez v0, :cond_12

    .line 254
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/jpeg/JpegExtractor;->endReadingWithImageTrack()V

    goto :goto_4c

    .line 256
    :cond_12
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->resetPeekPosition()V

    .line 257
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/jpeg/JpegExtractor;->mp4Extractor:Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;

    if-nez v1, :cond_20

    .line 258
    new-instance v1, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;-><init>()V

    iput-object v1, p0, Lcom/google/android/exoplayer2/extractor/jpeg/JpegExtractor;->mp4Extractor:Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;

    .line 260
    :cond_20
    new-instance v1, Lcom/google/android/exoplayer2/extractor/jpeg/StartOffsetExtractorInput;

    iget-wide v2, p0, Lcom/google/android/exoplayer2/extractor/jpeg/JpegExtractor;->mp4StartPosition:J

    invoke-direct {v1, p1, v2, v3}, Lcom/google/android/exoplayer2/extractor/jpeg/StartOffsetExtractorInput;-><init>(Lcom/google/android/exoplayer2/extractor/ExtractorInput;J)V

    iput-object v1, p0, Lcom/google/android/exoplayer2/extractor/jpeg/JpegExtractor;->mp4ExtractorStartOffsetExtractorInput:Lcom/google/android/exoplayer2/extractor/jpeg/StartOffsetExtractorInput;

    .line 262
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/jpeg/JpegExtractor;->mp4Extractor:Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;

    invoke-virtual {v2, v1}, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sniff(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z

    move-result v1

    if-eqz v1, :cond_49

    .line 263
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/jpeg/JpegExtractor;->mp4Extractor:Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;

    new-instance v2, Lcom/google/android/exoplayer2/extractor/jpeg/StartOffsetExtractorOutput;

    iget-wide v3, p0, Lcom/google/android/exoplayer2/extractor/jpeg/JpegExtractor;->mp4StartPosition:J

    iget-object v5, p0, Lcom/google/android/exoplayer2/extractor/jpeg/JpegExtractor;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    .line 264
    invoke-static {v5}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    invoke-direct {v2, v3, v4, v5}, Lcom/google/android/exoplayer2/extractor/jpeg/StartOffsetExtractorOutput;-><init>(JLcom/google/android/exoplayer2/extractor/ExtractorOutput;)V

    .line 263
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->init(Lcom/google/android/exoplayer2/extractor/ExtractorOutput;)V

    .line 265
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/jpeg/JpegExtractor;->startReadingMotionPhoto()V

    goto :goto_4c

    .line 267
    :cond_49
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/jpeg/JpegExtractor;->endReadingWithImageTrack()V

    .line 270
    :goto_4c
    return-void
.end method

.method private startReadingMotionPhoto()V
    .registers 4

    .line 273
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/jpeg/JpegExtractor;->motionPhotoMetadata:Lcom/google/android/exoplayer2/metadata/mp4/MotionPhotoMetadata;

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/extractor/jpeg/JpegExtractor;->outputImageTrack([Lcom/google/android/exoplayer2/metadata/Metadata$Entry;)V

    .line 274
    const/4 v0, 0x5

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/jpeg/JpegExtractor;->state:I

    .line 275
    return-void
.end method


# virtual methods
.method public init(Lcom/google/android/exoplayer2/extractor/ExtractorOutput;)V
    .registers 2
    .param p1, "output"    # Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    .line 133
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/jpeg/JpegExtractor;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    .line 134
    return-void
.end method

.method public read(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/extractor/PositionHolder;)I
    .registers 10
    .param p1, "input"    # Lcom/google/android/exoplayer2/extractor/ExtractorInput;
    .param p2, "seekPosition"    # Lcom/google/android/exoplayer2/extractor/PositionHolder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 139
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/jpeg/JpegExtractor;->state:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_58

    .line 172
    :pswitch_7
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 170
    :pswitch_d
    const/4 v0, -0x1

    return v0

    .line 157
    :pswitch_f
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/jpeg/JpegExtractor;->mp4ExtractorStartOffsetExtractorInput:Lcom/google/android/exoplayer2/extractor/jpeg/StartOffsetExtractorInput;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/jpeg/JpegExtractor;->lastExtractorInput:Lcom/google/android/exoplayer2/extractor/ExtractorInput;

    if-eq p1, v0, :cond_22

    .line 158
    :cond_17
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/jpeg/JpegExtractor;->lastExtractorInput:Lcom/google/android/exoplayer2/extractor/ExtractorInput;

    .line 159
    new-instance v0, Lcom/google/android/exoplayer2/extractor/jpeg/StartOffsetExtractorInput;

    iget-wide v2, p0, Lcom/google/android/exoplayer2/extractor/jpeg/JpegExtractor;->mp4StartPosition:J

    invoke-direct {v0, p1, v2, v3}, Lcom/google/android/exoplayer2/extractor/jpeg/StartOffsetExtractorInput;-><init>(Lcom/google/android/exoplayer2/extractor/ExtractorInput;J)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/jpeg/JpegExtractor;->mp4ExtractorStartOffsetExtractorInput:Lcom/google/android/exoplayer2/extractor/jpeg/StartOffsetExtractorInput;

    .line 163
    :cond_22
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/jpeg/JpegExtractor;->mp4Extractor:Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;

    .line 164
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;

    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/jpeg/JpegExtractor;->mp4ExtractorStartOffsetExtractorInput:Lcom/google/android/exoplayer2/extractor/jpeg/StartOffsetExtractorInput;

    invoke-virtual {v0, v2, p2}, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->read(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/extractor/PositionHolder;)I

    move-result v0

    .line 165
    .local v0, "readResult":I
    if-ne v0, v1, :cond_39

    .line 166
    iget-wide v1, p2, Lcom/google/android/exoplayer2/extractor/PositionHolder;->position:J

    iget-wide v3, p0, Lcom/google/android/exoplayer2/extractor/jpeg/JpegExtractor;->mp4StartPosition:J

    add-long/2addr v1, v3

    iput-wide v1, p2, Lcom/google/android/exoplayer2/extractor/PositionHolder;->position:J

    .line 168
    :cond_39
    return v0

    .line 150
    .end local v0    # "readResult":I
    :pswitch_3a
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/google/android/exoplayer2/extractor/jpeg/JpegExtractor;->mp4StartPosition:J

    cmp-long v0, v3, v5

    if-eqz v0, :cond_47

    .line 151
    iput-wide v5, p2, Lcom/google/android/exoplayer2/extractor/PositionHolder;->position:J

    .line 152
    return v1

    .line 154
    :cond_47
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/jpeg/JpegExtractor;->sniffMotionPhotoVideo(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)V

    .line 155
    return v2

    .line 147
    :pswitch_4b
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/jpeg/JpegExtractor;->readSegment(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)V

    .line 148
    return v2

    .line 144
    :pswitch_4f
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/jpeg/JpegExtractor;->readSegmentLength(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)V

    .line 145
    return v2

    .line 141
    :pswitch_53
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/jpeg/JpegExtractor;->readMarker(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)V

    .line 142
    return v2

    nop

    :pswitch_data_58
    .packed-switch 0x0
        :pswitch_53
        :pswitch_4f
        :pswitch_4b
        :pswitch_7
        :pswitch_3a
        :pswitch_f
        :pswitch_d
    .end packed-switch
.end method

.method public release()V
    .registers 2

    .line 188
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/jpeg/JpegExtractor;->mp4Extractor:Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;

    if-eqz v0, :cond_7

    .line 189
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->release()V

    .line 191
    :cond_7
    return-void
.end method

.method public seek(JJ)V
    .registers 8
    .param p1, "position"    # J
    .param p3, "timeUs"    # J

    .line 178
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_d

    .line 179
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/jpeg/JpegExtractor;->state:I

    .line 180
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/jpeg/JpegExtractor;->mp4Extractor:Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;

    goto :goto_1d

    .line 181
    :cond_d
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/jpeg/JpegExtractor;->state:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1d

    .line 182
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/jpeg/JpegExtractor;->mp4Extractor:Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->seek(JJ)V

    .line 184
    :cond_1d
    :goto_1d
    return-void
.end method

.method public sniff(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z
    .registers 8
    .param p1, "input"    # Lcom/google/android/exoplayer2/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 111
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/jpeg/JpegExtractor;->peekMarker(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)I

    move-result v0

    const v1, 0xffd8

    const/4 v2, 0x0

    if-eq v0, v1, :cond_b

    .line 112
    return v2

    .line 114
    :cond_b
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/jpeg/JpegExtractor;->peekMarker(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/jpeg/JpegExtractor;->marker:I

    .line 118
    const v1, 0xffe0

    if-ne v0, v1, :cond_1f

    .line 119
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/jpeg/JpegExtractor;->advancePeekPositionToNextSegment(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)V

    .line 120
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/jpeg/JpegExtractor;->peekMarker(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/jpeg/JpegExtractor;->marker:I

    .line 122
    :cond_1f
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/jpeg/JpegExtractor;->marker:I

    const v1, 0xffe1

    if-eq v0, v1, :cond_27

    .line 123
    return v2

    .line 125
    :cond_27
    const/4 v0, 0x2

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->advancePeekPosition(I)V

    .line 126
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/jpeg/JpegExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset(I)V

    .line 127
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/jpeg/JpegExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v0

    invoke-interface {p1, v0, v2, v1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->peekFully([BII)V

    .line 128
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/jpeg/JpegExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v0

    const-wide/32 v3, 0x45786966    # 5.758429993E-315

    cmp-long v5, v0, v3

    if-nez v5, :cond_50

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/jpeg/JpegExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v0

    if-nez v0, :cond_50

    const/4 v2, 0x1

    :cond_50
    return v2
.end method
