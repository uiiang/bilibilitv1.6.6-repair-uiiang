.class public final Lcom/google/android/exoplayer2/metadata/icy/IcyHeaders;
.super Ljava/lang/Object;
.source "IcyHeaders.java"

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
            "Lcom/google/android/exoplayer2/metadata/icy/IcyHeaders;",
            ">;"
        }
    .end annotation
.end field

.field public static final REQUEST_HEADER_ENABLE_METADATA_NAME:Ljava/lang/String; = "Icy-MetaData"

.field public static final REQUEST_HEADER_ENABLE_METADATA_VALUE:Ljava/lang/String; = "1"

.field private static final RESPONSE_HEADER_BITRATE:Ljava/lang/String; = "icy-br"

.field private static final RESPONSE_HEADER_GENRE:Ljava/lang/String; = "icy-genre"

.field private static final RESPONSE_HEADER_METADATA_INTERVAL:Ljava/lang/String; = "icy-metaint"

.field private static final RESPONSE_HEADER_NAME:Ljava/lang/String; = "icy-name"

.field private static final RESPONSE_HEADER_PUB:Ljava/lang/String; = "icy-pub"

.field private static final RESPONSE_HEADER_URL:Ljava/lang/String; = "icy-url"

.field private static final TAG:Ljava/lang/String; = "IcyHeaders"


# instance fields
.field public final bitrate:I

.field public final genre:Ljava/lang/String;

.field public final isPublic:Z

.field public final metadataInterval:I

.field public final name:Ljava/lang/String;

.field public final url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 249
    new-instance v0, Lcom/google/android/exoplayer2/metadata/icy/IcyHeaders$1;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/metadata/icy/IcyHeaders$1;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/metadata/icy/IcyHeaders;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V
    .registers 8
    .param p1, "bitrate"    # I
    .param p2, "genre"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "url"    # Ljava/lang/String;
    .param p5, "isPublic"    # Z
    .param p6, "metadataInterval"    # I

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    const/4 v0, -0x1

    if-eq p6, v0, :cond_b

    if-lez p6, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 164
    iput p1, p0, Lcom/google/android/exoplayer2/metadata/icy/IcyHeaders;->bitrate:I

    .line 165
    iput-object p2, p0, Lcom/google/android/exoplayer2/metadata/icy/IcyHeaders;->genre:Ljava/lang/String;

    .line 166
    iput-object p3, p0, Lcom/google/android/exoplayer2/metadata/icy/IcyHeaders;->name:Ljava/lang/String;

    .line 167
    iput-object p4, p0, Lcom/google/android/exoplayer2/metadata/icy/IcyHeaders;->url:Ljava/lang/String;

    .line 168
    iput-boolean p5, p0, Lcom/google/android/exoplayer2/metadata/icy/IcyHeaders;->isPublic:Z

    .line 169
    iput p6, p0, Lcom/google/android/exoplayer2/metadata/icy/IcyHeaders;->metadataInterval:I

    .line 170
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 173
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/metadata/icy/IcyHeaders;->bitrate:I

    .line 174
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/metadata/icy/IcyHeaders;->genre:Ljava/lang/String;

    .line 175
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/metadata/icy/IcyHeaders;->name:Ljava/lang/String;

    .line 176
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/metadata/icy/IcyHeaders;->url:Ljava/lang/String;

    .line 177
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Util;->readBoolean(Landroid/os/Parcel;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/metadata/icy/IcyHeaders;->isPublic:Z

    .line 178
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/metadata/icy/IcyHeaders;->metadataInterval:I

    .line 179
    return-void
.end method

.method public static parse(Ljava/util/Map;)Lcom/google/android/exoplayer2/metadata/icy/IcyHeaders;
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)",
            "Lcom/google/android/exoplayer2/metadata/icy/IcyHeaders;"
        }
    .end annotation

    .line 62
    .local p0, "responseHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    move-object/from16 v1, p0

    const-string v2, "Invalid metadata interval: "

    const/4 v3, 0x0

    .line 63
    .local v3, "icyHeadersPresent":Z
    const/4 v4, -0x1

    .line 64
    .local v4, "bitrate":I
    const/4 v5, 0x0

    .line 65
    .local v5, "genre":Ljava/lang/String;
    const/4 v6, 0x0

    .line 66
    .local v6, "name":Ljava/lang/String;
    const/4 v7, 0x0

    .line 67
    .local v7, "url":Ljava/lang/String;
    const/4 v8, 0x0

    .line 68
    .local v8, "isPublic":Z
    const/4 v9, -0x1

    .line 70
    .local v9, "metadataInterval":I
    const-string v0, "icy-br"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Ljava/util/List;

    .line 71
    .local v10, "headers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v11, "IcyHeaders"

    const/4 v12, 0x0

    if-eqz v10, :cond_5b

    .line 72
    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Ljava/lang/String;

    .line 74
    .local v13, "bitrateHeader":Ljava/lang/String;
    :try_start_20
    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    mul-int/lit16 v4, v0, 0x3e8

    .line 75
    if-lez v4, :cond_2b

    .line 76
    const/4 v0, 0x1

    move v3, v0

    .end local v3    # "icyHeadersPresent":Z
    .local v0, "icyHeadersPresent":Z
    goto :goto_43

    .line 78
    .end local v0    # "icyHeadersPresent":Z
    .restart local v3    # "icyHeadersPresent":Z
    :cond_2b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Invalid bitrate: "

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_41
    .catch Ljava/lang/NumberFormatException; {:try_start_20 .. :try_end_41} :catch_44

    .line 79
    const/4 v0, -0x1

    move v4, v0

    .line 83
    :goto_43
    goto :goto_5b

    .line 81
    :catch_44
    move-exception v0

    .line 82
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Invalid bitrate header: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v11, v14}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v13    # "bitrateHeader":Ljava/lang/String;
    :cond_5b
    :goto_5b
    const-string v0, "icy-genre"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 86
    .end local v10    # "headers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v0, "headers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_6d

    .line 87
    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    move-object v5, v10

    check-cast v5, Ljava/lang/String;

    .line 88
    const/4 v3, 0x1

    .line 90
    :cond_6d
    const-string v10, "icy-name"

    invoke-interface {v1, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    move-object v0, v10

    check-cast v0, Ljava/util/List;

    .line 91
    if-eqz v0, :cond_80

    .line 92
    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    move-object v6, v10

    check-cast v6, Ljava/lang/String;

    .line 93
    const/4 v3, 0x1

    .line 95
    :cond_80
    const-string v10, "icy-url"

    invoke-interface {v1, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    move-object v0, v10

    check-cast v0, Ljava/util/List;

    .line 96
    if-eqz v0, :cond_93

    .line 97
    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    move-object v7, v10

    check-cast v7, Ljava/lang/String;

    .line 98
    const/4 v3, 0x1

    .line 100
    :cond_93
    const-string v10, "icy-pub"

    invoke-interface {v1, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    move-object v0, v10

    check-cast v0, Ljava/util/List;

    .line 101
    if-eqz v0, :cond_ab

    .line 102
    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    const-string v13, "1"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    .line 103
    const/4 v3, 0x1

    .line 105
    :cond_ab
    const-string v10, "icy-metaint"

    invoke-interface {v1, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    .line 106
    .end local v0    # "headers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v10    # "headers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v10, :cond_f2

    .line 107
    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Ljava/lang/String;

    .line 109
    .local v12, "metadataIntervalHeader":Ljava/lang/String;
    :try_start_bc
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    move v9, v0

    .line 110
    if-lez v9, :cond_c6

    .line 111
    const/4 v0, 0x1

    move v3, v0

    .end local v3    # "icyHeadersPresent":Z
    .local v0, "icyHeadersPresent":Z
    goto :goto_dc

    .line 113
    .end local v0    # "icyHeadersPresent":Z
    .restart local v3    # "icyHeadersPresent":Z
    :cond_c6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_da
    .catch Ljava/lang/NumberFormatException; {:try_start_bc .. :try_end_da} :catch_dd

    .line 114
    const/4 v0, -0x1

    move v9, v0

    .line 118
    :goto_dc
    goto :goto_f2

    .line 116
    :catch_dd
    move-exception v0

    .line 117
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v2}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v12    # "metadataIntervalHeader":Ljava/lang/String;
    :cond_f2
    :goto_f2
    if-eqz v3, :cond_105

    .line 121
    new-instance v0, Lcom/google/android/exoplayer2/metadata/icy/IcyHeaders;

    move-object v13, v0

    move v14, v4

    move-object v15, v5

    move-object/from16 v16, v6

    move-object/from16 v17, v7

    move/from16 v18, v8

    move/from16 v19, v9

    invoke-direct/range {v13 .. v19}, Lcom/google/android/exoplayer2/metadata/icy/IcyHeaders;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    goto :goto_106

    .line 122
    :cond_105
    const/4 v0, 0x0

    .line 120
    :goto_106
    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 246
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 193
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 194
    return v0

    .line 196
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_48

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_48

    .line 199
    :cond_12
    move-object v2, p1

    check-cast v2, Lcom/google/android/exoplayer2/metadata/icy/IcyHeaders;

    .line 200
    .local v2, "other":Lcom/google/android/exoplayer2/metadata/icy/IcyHeaders;
    iget v3, p0, Lcom/google/android/exoplayer2/metadata/icy/IcyHeaders;->bitrate:I

    iget v4, v2, Lcom/google/android/exoplayer2/metadata/icy/IcyHeaders;->bitrate:I

    if-ne v3, v4, :cond_46

    iget-object v3, p0, Lcom/google/android/exoplayer2/metadata/icy/IcyHeaders;->genre:Ljava/lang/String;

    iget-object v4, v2, Lcom/google/android/exoplayer2/metadata/icy/IcyHeaders;->genre:Ljava/lang/String;

    .line 201
    invoke-static {v3, v4}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_46

    iget-object v3, p0, Lcom/google/android/exoplayer2/metadata/icy/IcyHeaders;->name:Ljava/lang/String;

    iget-object v4, v2, Lcom/google/android/exoplayer2/metadata/icy/IcyHeaders;->name:Ljava/lang/String;

    .line 202
    invoke-static {v3, v4}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_46

    iget-object v3, p0, Lcom/google/android/exoplayer2/metadata/icy/IcyHeaders;->url:Ljava/lang/String;

    iget-object v4, v2, Lcom/google/android/exoplayer2/metadata/icy/IcyHeaders;->url:Ljava/lang/String;

    .line 203
    invoke-static {v3, v4}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_46

    iget-boolean v3, p0, Lcom/google/android/exoplayer2/metadata/icy/IcyHeaders;->isPublic:Z

    iget-boolean v4, v2, Lcom/google/android/exoplayer2/metadata/icy/IcyHeaders;->isPublic:Z

    if-ne v3, v4, :cond_46

    iget v3, p0, Lcom/google/android/exoplayer2/metadata/icy/IcyHeaders;->metadataInterval:I

    iget v4, v2, Lcom/google/android/exoplayer2/metadata/icy/IcyHeaders;->metadataInterval:I

    if-ne v3, v4, :cond_46

    goto :goto_47

    :cond_46
    const/4 v0, 0x0

    .line 200
    :goto_47
    return v0

    .line 197
    .end local v2    # "other":Lcom/google/android/exoplayer2/metadata/icy/IcyHeaders;
    :cond_48
    :goto_48
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
    .registers 5

    .line 210
    const/16 v0, 0x11

    .line 211
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/android/exoplayer2/metadata/icy/IcyHeaders;->bitrate:I

    add-int/2addr v1, v2

    .line 212
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/google/android/exoplayer2/metadata/icy/IcyHeaders;->genre:Ljava/lang/String;

    const/4 v3, 0x0

    if-eqz v2, :cond_13

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_14

    :cond_13
    const/4 v2, 0x0

    :goto_14
    add-int/2addr v0, v2

    .line 213
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/exoplayer2/metadata/icy/IcyHeaders;->name:Ljava/lang/String;

    if-eqz v2, :cond_20

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_21

    :cond_20
    const/4 v2, 0x0

    :goto_21
    add-int/2addr v1, v2

    .line 214
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/google/android/exoplayer2/metadata/icy/IcyHeaders;->url:Ljava/lang/String;

    if-eqz v2, :cond_2c

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    :cond_2c
    add-int/2addr v0, v3

    .line 215
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/metadata/icy/IcyHeaders;->isPublic:Z

    add-int/2addr v1, v2

    .line 216
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Lcom/google/android/exoplayer2/metadata/icy/IcyHeaders;->metadataInterval:I

    add-int/2addr v0, v2

    .line 217
    .end local v1    # "result":I
    .restart local v0    # "result":I
    return v0
.end method

.method public populateMediaMetadata(Lcom/google/android/exoplayer2/MediaMetadata$Builder;)V
    .registers 3
    .param p1, "builder"    # Lcom/google/android/exoplayer2/MediaMetadata$Builder;

    .line 183
    iget-object v0, p0, Lcom/google/android/exoplayer2/metadata/icy/IcyHeaders;->name:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 184
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->setStation(Ljava/lang/CharSequence;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;

    .line 186
    :cond_7
    iget-object v0, p0, Lcom/google/android/exoplayer2/metadata/icy/IcyHeaders;->genre:Ljava/lang/String;

    if-eqz v0, :cond_e

    .line 187
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->setGenre(Ljava/lang/CharSequence;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;

    .line 189
    :cond_e
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 222
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IcyHeaders: name=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/metadata/icy/IcyHeaders;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\", genre=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/metadata/icy/IcyHeaders;->genre:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\", bitrate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/exoplayer2/metadata/icy/IcyHeaders;->bitrate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", metadataInterval="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/exoplayer2/metadata/icy/IcyHeaders;->metadataInterval:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 236
    iget v0, p0, Lcom/google/android/exoplayer2/metadata/icy/IcyHeaders;->bitrate:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 237
    iget-object v0, p0, Lcom/google/android/exoplayer2/metadata/icy/IcyHeaders;->genre:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 238
    iget-object v0, p0, Lcom/google/android/exoplayer2/metadata/icy/IcyHeaders;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 239
    iget-object v0, p0, Lcom/google/android/exoplayer2/metadata/icy/IcyHeaders;->url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 240
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/metadata/icy/IcyHeaders;->isPublic:Z

    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/util/Util;->writeBoolean(Landroid/os/Parcel;Z)V

    .line 241
    iget v0, p0, Lcom/google/android/exoplayer2/metadata/icy/IcyHeaders;->metadataInterval:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 242
    return-void
.end method
