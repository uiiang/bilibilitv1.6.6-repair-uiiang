.class public final Lcom/google/android/exoplayer2/metadata/id3/ChapterFrame;
.super Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;
.source "ChapterFrame.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/exoplayer2/metadata/id3/ChapterFrame;",
            ">;"
        }
    .end annotation
.end field

.field public static final ID:Ljava/lang/String; = "CHAP"


# instance fields
.field public final chapterId:Ljava/lang/String;

.field public final endOffset:J

.field public final endTimeMs:I

.field public final startOffset:J

.field public final startTimeMs:I

.field private final subFrames:[Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 135
    new-instance v0, Lcom/google/android/exoplayer2/metadata/id3/ChapterFrame$1;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/metadata/id3/ChapterFrame$1;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/metadata/id3/ChapterFrame;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 6
    .param p1, "in"    # Landroid/os/Parcel;

    .line 66
    const-string v0, "CHAP"

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;-><init>(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/exoplayer2/metadata/id3/ChapterFrame;->chapterId:Ljava/lang/String;

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/metadata/id3/ChapterFrame;->startTimeMs:I

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/metadata/id3/ChapterFrame;->endTimeMs:I

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/metadata/id3/ChapterFrame;->startOffset:J

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/metadata/id3/ChapterFrame;->endOffset:J

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 73
    .local v0, "subFrameCount":I
    new-array v1, v0, [Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;

    iput-object v1, p0, Lcom/google/android/exoplayer2/metadata/id3/ChapterFrame;->subFrames:[Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;

    .line 74
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_32
    if-ge v1, v0, :cond_47

    .line 75
    iget-object v2, p0, Lcom/google/android/exoplayer2/metadata/id3/ChapterFrame;->subFrames:[Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;

    const-class v3, Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;

    aput-object v3, v2, v1

    .line 74
    add-int/lit8 v1, v1, 0x1

    goto :goto_32

    .line 77
    .end local v1    # "i":I
    :cond_47
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIJJ[Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;)V
    .registers 10
    .param p1, "chapterId"    # Ljava/lang/String;
    .param p2, "startTimeMs"    # I
    .param p3, "endTimeMs"    # I
    .param p4, "startOffset"    # J
    .param p6, "endOffset"    # J
    .param p8, "subFrames"    # [Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;

    .line 56
    const-string v0, "CHAP"

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;-><init>(Ljava/lang/String;)V

    .line 57
    iput-object p1, p0, Lcom/google/android/exoplayer2/metadata/id3/ChapterFrame;->chapterId:Ljava/lang/String;

    .line 58
    iput p2, p0, Lcom/google/android/exoplayer2/metadata/id3/ChapterFrame;->startTimeMs:I

    .line 59
    iput p3, p0, Lcom/google/android/exoplayer2/metadata/id3/ChapterFrame;->endTimeMs:I

    .line 60
    iput-wide p4, p0, Lcom/google/android/exoplayer2/metadata/id3/ChapterFrame;->startOffset:J

    .line 61
    iput-wide p6, p0, Lcom/google/android/exoplayer2/metadata/id3/ChapterFrame;->endOffset:J

    .line 62
    iput-object p8, p0, Lcom/google/android/exoplayer2/metadata/id3/ChapterFrame;->subFrames:[Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;

    .line 63
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 132
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 10
    .param p1, "obj"    # Ljava/lang/Object;

    .line 91
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 92
    return v0

    .line 94
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_48

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_48

    .line 97
    :cond_12
    move-object v2, p1

    check-cast v2, Lcom/google/android/exoplayer2/metadata/id3/ChapterFrame;

    .line 98
    .local v2, "other":Lcom/google/android/exoplayer2/metadata/id3/ChapterFrame;
    iget v3, p0, Lcom/google/android/exoplayer2/metadata/id3/ChapterFrame;->startTimeMs:I

    iget v4, v2, Lcom/google/android/exoplayer2/metadata/id3/ChapterFrame;->startTimeMs:I

    if-ne v3, v4, :cond_46

    iget v3, p0, Lcom/google/android/exoplayer2/metadata/id3/ChapterFrame;->endTimeMs:I

    iget v4, v2, Lcom/google/android/exoplayer2/metadata/id3/ChapterFrame;->endTimeMs:I

    if-ne v3, v4, :cond_46

    iget-wide v3, p0, Lcom/google/android/exoplayer2/metadata/id3/ChapterFrame;->startOffset:J

    iget-wide v5, v2, Lcom/google/android/exoplayer2/metadata/id3/ChapterFrame;->startOffset:J

    cmp-long v7, v3, v5

    if-nez v7, :cond_46

    iget-wide v3, p0, Lcom/google/android/exoplayer2/metadata/id3/ChapterFrame;->endOffset:J

    iget-wide v5, v2, Lcom/google/android/exoplayer2/metadata/id3/ChapterFrame;->endOffset:J

    cmp-long v7, v3, v5

    if-nez v7, :cond_46

    iget-object v3, p0, Lcom/google/android/exoplayer2/metadata/id3/ChapterFrame;->chapterId:Ljava/lang/String;

    iget-object v4, v2, Lcom/google/android/exoplayer2/metadata/id3/ChapterFrame;->chapterId:Ljava/lang/String;

    .line 102
    invoke-static {v3, v4}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_46

    iget-object v3, p0, Lcom/google/android/exoplayer2/metadata/id3/ChapterFrame;->subFrames:[Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;

    iget-object v4, v2, Lcom/google/android/exoplayer2/metadata/id3/ChapterFrame;->subFrames:[Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;

    .line 103
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_46

    goto :goto_47

    :cond_46
    const/4 v0, 0x0

    .line 98
    :goto_47
    return v0

    .line 95
    .end local v2    # "other":Lcom/google/android/exoplayer2/metadata/id3/ChapterFrame;
    :cond_48
    :goto_48
    return v1
.end method

.method public getSubFrame(I)Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;
    .registers 3
    .param p1, "index"    # I

    .line 86
    iget-object v0, p0, Lcom/google/android/exoplayer2/metadata/id3/ChapterFrame;->subFrames:[Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getSubFrameCount()I
    .registers 2

    .line 81
    iget-object v0, p0, Lcom/google/android/exoplayer2/metadata/id3/ChapterFrame;->subFrames:[Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;

    array-length v0, v0

    return v0
.end method

.method public hashCode()I
    .registers 5

    .line 108
    const/16 v0, 0x11

    .line 109
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/android/exoplayer2/metadata/id3/ChapterFrame;->startTimeMs:I

    add-int/2addr v1, v2

    .line 110
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Lcom/google/android/exoplayer2/metadata/id3/ChapterFrame;->endTimeMs:I

    add-int/2addr v0, v2

    .line 111
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lcom/google/android/exoplayer2/metadata/id3/ChapterFrame;->startOffset:J

    long-to-int v3, v2

    add-int/2addr v1, v3

    .line 112
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-wide v2, p0, Lcom/google/android/exoplayer2/metadata/id3/ChapterFrame;->endOffset:J

    long-to-int v3, v2

    add-int/2addr v0, v3

    .line 113
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/exoplayer2/metadata/id3/ChapterFrame;->chapterId:Ljava/lang/String;

    if-eqz v2, :cond_23

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_24

    :cond_23
    const/4 v2, 0x0

    :goto_24
    add-int/2addr v1, v2

    .line 114
    .end local v0    # "result":I
    .restart local v1    # "result":I
    return v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 8
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 119
    iget-object v0, p0, Lcom/google/android/exoplayer2/metadata/id3/ChapterFrame;->chapterId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 120
    iget v0, p0, Lcom/google/android/exoplayer2/metadata/id3/ChapterFrame;->startTimeMs:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 121
    iget v0, p0, Lcom/google/android/exoplayer2/metadata/id3/ChapterFrame;->endTimeMs:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 122
    iget-wide v0, p0, Lcom/google/android/exoplayer2/metadata/id3/ChapterFrame;->startOffset:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 123
    iget-wide v0, p0, Lcom/google/android/exoplayer2/metadata/id3/ChapterFrame;->endOffset:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 124
    iget-object v0, p0, Lcom/google/android/exoplayer2/metadata/id3/ChapterFrame;->subFrames:[Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 125
    iget-object v0, p0, Lcom/google/android/exoplayer2/metadata/id3/ChapterFrame;->subFrames:[Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_24
    if-ge v3, v1, :cond_2e

    aget-object v4, v0, v3

    .line 126
    .local v4, "subFrame":Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;
    invoke-virtual {p1, v4, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 125
    .end local v4    # "subFrame":Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;
    add-int/lit8 v3, v3, 0x1

    goto :goto_24

    .line 128
    :cond_2e
    return-void
.end method
