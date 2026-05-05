.class public final Lcom/google/android/exoplayer2/metadata/scte35/TimeSignalCommand;
.super Lcom/google/android/exoplayer2/metadata/scte35/SpliceCommand;
.source "TimeSignalCommand.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/exoplayer2/metadata/scte35/TimeSignalCommand;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final playbackPositionUs:J

.field public final ptsTime:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 89
    new-instance v0, Lcom/google/android/exoplayer2/metadata/scte35/TimeSignalCommand$1;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/metadata/scte35/TimeSignalCommand$1;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/metadata/scte35/TimeSignalCommand;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(JJ)V
    .registers 5
    .param p1, "ptsTime"    # J
    .param p3, "playbackPositionUs"    # J

    .line 39
    invoke-direct {p0}, Lcom/google/android/exoplayer2/metadata/scte35/SpliceCommand;-><init>()V

    .line 40
    iput-wide p1, p0, Lcom/google/android/exoplayer2/metadata/scte35/TimeSignalCommand;->ptsTime:J

    .line 41
    iput-wide p3, p0, Lcom/google/android/exoplayer2/metadata/scte35/TimeSignalCommand;->playbackPositionUs:J

    .line 42
    return-void
.end method

.method synthetic constructor <init>(JJLcom/google/android/exoplayer2/metadata/scte35/TimeSignalCommand$1;)V
    .registers 6
    .param p1, "x0"    # J
    .param p3, "x1"    # J
    .param p5, "x2"    # Lcom/google/android/exoplayer2/metadata/scte35/TimeSignalCommand$1;

    .line 32
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/metadata/scte35/TimeSignalCommand;-><init>(JJ)V

    return-void
.end method

.method static parseFromSection(Lcom/google/android/exoplayer2/util/ParsableByteArray;JLcom/google/android/exoplayer2/util/TimestampAdjuster;)Lcom/google/android/exoplayer2/metadata/scte35/TimeSignalCommand;
    .registers 9
    .param p0, "sectionData"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .param p1, "ptsAdjustment"    # J
    .param p3, "timestampAdjuster"    # Lcom/google/android/exoplayer2/util/TimestampAdjuster;

    .line 46
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/metadata/scte35/TimeSignalCommand;->parseSpliceTime(Lcom/google/android/exoplayer2/util/ParsableByteArray;J)J

    move-result-wide v0

    .line 47
    .local v0, "ptsTime":J
    invoke-virtual {p3, v0, v1}, Lcom/google/android/exoplayer2/util/TimestampAdjuster;->adjustTsTimestamp(J)J

    move-result-wide v2

    .line 48
    .local v2, "playbackPositionUs":J
    new-instance v4, Lcom/google/android/exoplayer2/metadata/scte35/TimeSignalCommand;

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/google/android/exoplayer2/metadata/scte35/TimeSignalCommand;-><init>(JJ)V

    return-object v4
.end method

.method static parseSpliceTime(Lcom/google/android/exoplayer2/util/ParsableByteArray;J)J
    .registers 12
    .param p0, "sectionData"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .param p1, "ptsAdjustment"    # J

    .line 61
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    int-to-long v0, v0

    .line 62
    .local v0, "firstByte":J
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 63
    .local v2, "ptsTime":J
    const-wide/16 v4, 0x80

    and-long/2addr v4, v0

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-eqz v8, :cond_26

    .line 65
    const-wide/16 v4, 0x1

    and-long/2addr v4, v0

    const/16 v6, 0x20

    shl-long/2addr v4, v6

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v6

    or-long v2, v4, v6

    .line 66
    add-long/2addr v2, p1

    .line 67
    const-wide v4, 0x1ffffffffL

    and-long/2addr v2, v4

    .line 69
    :cond_26
    return-wide v2
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 4

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SCTE-35 TimeSignalCommand { ptsTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/exoplayer2/metadata/scte35/TimeSignalCommand;->ptsTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", playbackPositionUs= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/exoplayer2/metadata/scte35/TimeSignalCommand;->playbackPositionUs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 85
    iget-wide v0, p0, Lcom/google/android/exoplayer2/metadata/scte35/TimeSignalCommand;->ptsTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 86
    iget-wide v0, p0, Lcom/google/android/exoplayer2/metadata/scte35/TimeSignalCommand;->playbackPositionUs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 87
    return-void
.end method
