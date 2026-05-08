.class public final Lcom/google/android/exoplayer2/extractor/mp4/Track;
.super Ljava/lang/Object;
.source "Track.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/extractor/mp4/Track$Transformation;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final TRANSFORMATION_CEA608_CDAT:I = 0x1

.field public static final TRANSFORMATION_NONE:I


# instance fields
.field public final durationUs:J

.field public final editListDurations:[J

.field public final editListMediaTimes:[J

.field public final format:Lcom/google/android/exoplayer2/Format;

.field public final id:I

.field public final movieTimescale:J

.field public final nalUnitLengthFieldLength:I

.field private final sampleDescriptionEncryptionBoxes:[Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;

.field public final sampleTransformation:I

.field public final timescale:J

.field public final type:I


# direct methods
.method public constructor <init>(IIJJJLcom/google/android/exoplayer2/Format;I[Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;I[J[J)V
    .registers 15
    .param p1, "id"    # I
    .param p2, "type"    # I
    .param p3, "timescale"    # J
    .param p5, "movieTimescale"    # J
    .param p7, "durationUs"    # J
    .param p9, "format"    # Lcom/google/android/exoplayer2/Format;
    .param p10, "sampleTransformation"    # I
    .param p11, "sampleDescriptionEncryptionBoxes"    # [Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;
    .param p12, "nalUnitLengthFieldLength"    # I
    .param p13, "editListDurations"    # [J
    .param p14, "editListMediaTimes"    # [J

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/Track;->id:I

    .line 107
    iput p2, p0, Lcom/google/android/exoplayer2/extractor/mp4/Track;->type:I

    .line 108
    iput-wide p3, p0, Lcom/google/android/exoplayer2/extractor/mp4/Track;->timescale:J

    .line 109
    iput-wide p5, p0, Lcom/google/android/exoplayer2/extractor/mp4/Track;->movieTimescale:J

    .line 110
    iput-wide p7, p0, Lcom/google/android/exoplayer2/extractor/mp4/Track;->durationUs:J

    .line 111
    iput-object p9, p0, Lcom/google/android/exoplayer2/extractor/mp4/Track;->format:Lcom/google/android/exoplayer2/Format;

    .line 112
    iput p10, p0, Lcom/google/android/exoplayer2/extractor/mp4/Track;->sampleTransformation:I

    .line 113
    iput-object p11, p0, Lcom/google/android/exoplayer2/extractor/mp4/Track;->sampleDescriptionEncryptionBoxes:[Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;

    .line 114
    iput p12, p0, Lcom/google/android/exoplayer2/extractor/mp4/Track;->nalUnitLengthFieldLength:I

    .line 115
    iput-object p13, p0, Lcom/google/android/exoplayer2/extractor/mp4/Track;->editListDurations:[J

    .line 116
    iput-object p14, p0, Lcom/google/android/exoplayer2/extractor/mp4/Track;->editListMediaTimes:[J

    .line 117
    return-void
.end method


# virtual methods
.method public copyWithFormat(Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/extractor/mp4/Track;
    .registers 19
    .param p1, "format"    # Lcom/google/android/exoplayer2/Format;

    .line 134
    move-object/from16 v0, p0

    new-instance v16, Lcom/google/android/exoplayer2/extractor/mp4/Track;

    iget v2, v0, Lcom/google/android/exoplayer2/extractor/mp4/Track;->id:I

    iget v3, v0, Lcom/google/android/exoplayer2/extractor/mp4/Track;->type:I

    iget-wide v4, v0, Lcom/google/android/exoplayer2/extractor/mp4/Track;->timescale:J

    iget-wide v6, v0, Lcom/google/android/exoplayer2/extractor/mp4/Track;->movieTimescale:J

    iget-wide v8, v0, Lcom/google/android/exoplayer2/extractor/mp4/Track;->durationUs:J

    iget v11, v0, Lcom/google/android/exoplayer2/extractor/mp4/Track;->sampleTransformation:I

    iget-object v12, v0, Lcom/google/android/exoplayer2/extractor/mp4/Track;->sampleDescriptionEncryptionBoxes:[Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;

    iget v13, v0, Lcom/google/android/exoplayer2/extractor/mp4/Track;->nalUnitLengthFieldLength:I

    iget-object v14, v0, Lcom/google/android/exoplayer2/extractor/mp4/Track;->editListDurations:[J

    iget-object v15, v0, Lcom/google/android/exoplayer2/extractor/mp4/Track;->editListMediaTimes:[J

    move-object/from16 v1, v16

    move-object/from16 v10, p1

    invoke-direct/range {v1 .. v15}, Lcom/google/android/exoplayer2/extractor/mp4/Track;-><init>(IIJJJLcom/google/android/exoplayer2/Format;I[Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;I[J[J)V

    return-object v16
.end method

.method public getSampleDescriptionEncryptionBox(I)Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;
    .registers 3
    .param p1, "sampleDescriptionIndex"    # I

    .line 128
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Track;->sampleDescriptionEncryptionBoxes:[Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;

    if-nez v0, :cond_6

    .line 129
    const/4 v0, 0x0

    goto :goto_8

    .line 130
    :cond_6
    aget-object v0, v0, p1

    .line 128
    :goto_8
    return-object v0
.end method
