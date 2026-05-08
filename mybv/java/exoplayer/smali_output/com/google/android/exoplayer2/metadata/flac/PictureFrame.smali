.class public final Lcom/google/android/exoplayer2/metadata/flac/PictureFrame;
.super Ljava/lang/Object;
.source "PictureFrame.java"

# interfaces
.implements Lcom/google/android/exoplayer2/metadata/Metadata$Entry;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/exoplayer2/metadata/flac/PictureFrame;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final colors:I

.field public final depth:I

.field public final description:Ljava/lang/String;

.field public final height:I

.field public final mimeType:Ljava/lang/String;

.field public final pictureData:[B

.field public final pictureType:I

.field public final width:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 176
    new-instance v0, Lcom/google/android/exoplayer2/metadata/flac/PictureFrame$1;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/metadata/flac/PictureFrame$1;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/metadata/flac/PictureFrame;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;IIII[B)V
    .registers 9
    .param p1, "pictureType"    # I
    .param p2, "mimeType"    # Ljava/lang/String;
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "width"    # I
    .param p5, "height"    # I
    .param p6, "depth"    # I
    .param p7, "colors"    # I
    .param p8, "pictureData"    # [B

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput p1, p0, Lcom/google/android/exoplayer2/metadata/flac/PictureFrame;->pictureType:I

    .line 67
    iput-object p2, p0, Lcom/google/android/exoplayer2/metadata/flac/PictureFrame;->mimeType:Ljava/lang/String;

    .line 68
    iput-object p3, p0, Lcom/google/android/exoplayer2/metadata/flac/PictureFrame;->description:Ljava/lang/String;

    .line 69
    iput p4, p0, Lcom/google/android/exoplayer2/metadata/flac/PictureFrame;->width:I

    .line 70
    iput p5, p0, Lcom/google/android/exoplayer2/metadata/flac/PictureFrame;->height:I

    .line 71
    iput p6, p0, Lcom/google/android/exoplayer2/metadata/flac/PictureFrame;->depth:I

    .line 72
    iput p7, p0, Lcom/google/android/exoplayer2/metadata/flac/PictureFrame;->colors:I

    .line 73
    iput-object p8, p0, Lcom/google/android/exoplayer2/metadata/flac/PictureFrame;->pictureData:[B

    .line 74
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/metadata/flac/PictureFrame;->pictureType:I

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/exoplayer2/metadata/flac/PictureFrame;->mimeType:Ljava/lang/String;

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/exoplayer2/metadata/flac/PictureFrame;->description:Ljava/lang/String;

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/metadata/flac/PictureFrame;->width:I

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/metadata/flac/PictureFrame;->height:I

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/metadata/flac/PictureFrame;->depth:I

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/metadata/flac/PictureFrame;->colors:I

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/google/android/exoplayer2/metadata/flac/PictureFrame;->pictureData:[B

    .line 85
    return-void
.end method

.method public static fromPictureBlock(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/metadata/flac/PictureFrame;
    .registers 23
    .param p0, "pictureBlock"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 159
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v10

    .line 160
    .local v10, "pictureType":I
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v11

    .line 161
    .local v11, "mimeTypeLength":I
    sget-object v1, Lcom/google/common/base/Charsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v11, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readString(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v12

    .line 162
    .local v12, "mimeType":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v13

    .line 163
    .local v13, "descriptionLength":I
    invoke-virtual {v0, v13}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readString(I)Ljava/lang/String;

    move-result-object v14

    .line 164
    .local v14, "description":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v15

    .line 165
    .local v15, "width":I
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v16

    .line 166
    .local v16, "height":I
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v17

    .line 167
    .local v17, "depth":I
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v18

    .line 168
    .local v18, "colors":I
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v9

    .line 169
    .local v9, "pictureDataLength":I
    new-array v8, v9, [B

    .line 170
    .local v8, "pictureData":[B
    const/4 v1, 0x0

    invoke-virtual {v0, v8, v1, v9}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    .line 172
    new-instance v19, Lcom/google/android/exoplayer2/metadata/flac/PictureFrame;

    move-object/from16 v1, v19

    move v2, v10

    move-object v3, v12

    move-object v4, v14

    move v5, v15

    move/from16 v6, v16

    move/from16 v7, v17

    move-object/from16 v20, v8

    .end local v8    # "pictureData":[B
    .local v20, "pictureData":[B
    move/from16 v8, v18

    move/from16 v21, v9

    .end local v9    # "pictureDataLength":I
    .local v21, "pictureDataLength":I
    move-object/from16 v9, v20

    invoke-direct/range {v1 .. v9}, Lcom/google/android/exoplayer2/metadata/flac/PictureFrame;-><init>(ILjava/lang/String;Ljava/lang/String;IIII[B)V

    return-object v19
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 144
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 99
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 100
    return v0

    .line 102
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_54

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_54

    .line 105
    :cond_12
    move-object v2, p1

    check-cast v2, Lcom/google/android/exoplayer2/metadata/flac/PictureFrame;

    .line 106
    .local v2, "other":Lcom/google/android/exoplayer2/metadata/flac/PictureFrame;
    iget v3, p0, Lcom/google/android/exoplayer2/metadata/flac/PictureFrame;->pictureType:I

    iget v4, v2, Lcom/google/android/exoplayer2/metadata/flac/PictureFrame;->pictureType:I

    if-ne v3, v4, :cond_52

    iget-object v3, p0, Lcom/google/android/exoplayer2/metadata/flac/PictureFrame;->mimeType:Ljava/lang/String;

    iget-object v4, v2, Lcom/google/android/exoplayer2/metadata/flac/PictureFrame;->mimeType:Ljava/lang/String;

    .line 107
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_52

    iget-object v3, p0, Lcom/google/android/exoplayer2/metadata/flac/PictureFrame;->description:Ljava/lang/String;

    iget-object v4, v2, Lcom/google/android/exoplayer2/metadata/flac/PictureFrame;->description:Ljava/lang/String;

    .line 108
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_52

    iget v3, p0, Lcom/google/android/exoplayer2/metadata/flac/PictureFrame;->width:I

    iget v4, v2, Lcom/google/android/exoplayer2/metadata/flac/PictureFrame;->width:I

    if-ne v3, v4, :cond_52

    iget v3, p0, Lcom/google/android/exoplayer2/metadata/flac/PictureFrame;->height:I

    iget v4, v2, Lcom/google/android/exoplayer2/metadata/flac/PictureFrame;->height:I

    if-ne v3, v4, :cond_52

    iget v3, p0, Lcom/google/android/exoplayer2/metadata/flac/PictureFrame;->depth:I

    iget v4, v2, Lcom/google/android/exoplayer2/metadata/flac/PictureFrame;->depth:I

    if-ne v3, v4, :cond_52

    iget v3, p0, Lcom/google/android/exoplayer2/metadata/flac/PictureFrame;->colors:I

    iget v4, v2, Lcom/google/android/exoplayer2/metadata/flac/PictureFrame;->colors:I

    if-ne v3, v4, :cond_52

    iget-object v3, p0, Lcom/google/android/exoplayer2/metadata/flac/PictureFrame;->pictureData:[B

    iget-object v4, v2, Lcom/google/android/exoplayer2/metadata/flac/PictureFrame;->pictureData:[B

    .line 113
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_52

    goto :goto_53

    :cond_52
    const/4 v0, 0x0

    .line 106
    :goto_53
    return v0

    .line 103
    .end local v2    # "other":Lcom/google/android/exoplayer2/metadata/flac/PictureFrame;
    :cond_54
    :goto_54
    return v1
.end method

.method public synthetic getWrappedMetadataBytes()[B
    .registers 2

    invoke-static {p0}, Lcom/google/android/exoplayer2/metadata/Metadata$Entry$-CC;->$default$getWrappedMetadataBytes(Lcom/google/android/exoplayer2/metadata/Metadata$Entry;)[B

    move-result-object v0

    return-object v0
.end method

.method public synthetic getWrappedMetadataFormat()Lcom/google/android/exoplayer2/Format;
    .registers 2

    invoke-static {p0}, Lcom/google/android/exoplayer2/metadata/Metadata$Entry$-CC;->$default$getWrappedMetadataFormat(Lcom/google/android/exoplayer2/metadata/Metadata$Entry;)Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    .line 118
    const/16 v0, 0x11

    .line 119
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/android/exoplayer2/metadata/flac/PictureFrame;->pictureType:I

    add-int/2addr v1, v2

    .line 120
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/google/android/exoplayer2/metadata/flac/PictureFrame;->mimeType:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 121
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/exoplayer2/metadata/flac/PictureFrame;->description:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 122
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Lcom/google/android/exoplayer2/metadata/flac/PictureFrame;->width:I

    add-int/2addr v0, v2

    .line 123
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/android/exoplayer2/metadata/flac/PictureFrame;->height:I

    add-int/2addr v1, v2

    .line 124
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Lcom/google/android/exoplayer2/metadata/flac/PictureFrame;->depth:I

    add-int/2addr v0, v2

    .line 125
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/android/exoplayer2/metadata/flac/PictureFrame;->colors:I

    add-int/2addr v1, v2

    .line 126
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/google/android/exoplayer2/metadata/flac/PictureFrame;->pictureData:[B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    add-int/2addr v0, v2

    .line 127
    .end local v1    # "result":I
    .restart local v0    # "result":I
    return v0
.end method

.method public populateMediaMetadata(Lcom/google/android/exoplayer2/MediaMetadata$Builder;)V
    .registers 4
    .param p1, "builder"    # Lcom/google/android/exoplayer2/MediaMetadata$Builder;

    .line 89
    iget-object v0, p0, Lcom/google/android/exoplayer2/metadata/flac/PictureFrame;->pictureData:[B

    iget v1, p0, Lcom/google/android/exoplayer2/metadata/flac/PictureFrame;->pictureType:I

    invoke-virtual {p1, v0, v1}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->maybeSetArtworkData([BI)Lcom/google/android/exoplayer2/MediaMetadata$Builder;

    .line 90
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Picture: mimeType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/metadata/flac/PictureFrame;->mimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", description="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/metadata/flac/PictureFrame;->description:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 132
    iget v0, p0, Lcom/google/android/exoplayer2/metadata/flac/PictureFrame;->pictureType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 133
    iget-object v0, p0, Lcom/google/android/exoplayer2/metadata/flac/PictureFrame;->mimeType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 134
    iget-object v0, p0, Lcom/google/android/exoplayer2/metadata/flac/PictureFrame;->description:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 135
    iget v0, p0, Lcom/google/android/exoplayer2/metadata/flac/PictureFrame;->width:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 136
    iget v0, p0, Lcom/google/android/exoplayer2/metadata/flac/PictureFrame;->height:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 137
    iget v0, p0, Lcom/google/android/exoplayer2/metadata/flac/PictureFrame;->depth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 138
    iget v0, p0, Lcom/google/android/exoplayer2/metadata/flac/PictureFrame;->colors:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 139
    iget-object v0, p0, Lcom/google/android/exoplayer2/metadata/flac/PictureFrame;->pictureData:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 140
    return-void
.end method
