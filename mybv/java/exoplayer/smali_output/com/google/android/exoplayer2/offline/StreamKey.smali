.class public final Lcom/google/android/exoplayer2/offline/StreamKey;
.super Ljava/lang/Object;
.source "StreamKey.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Landroid/os/Parcelable;
.implements Lcom/google/android/exoplayer2/Bundleable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/google/android/exoplayer2/offline/StreamKey;",
        ">;",
        "Landroid/os/Parcelable;",
        "Lcom/google/android/exoplayer2/Bundleable;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/exoplayer2/offline/StreamKey;",
            ">;"
        }
    .end annotation
.end field

.field private static final FIELD_GROUP_INDEX:Ljava/lang/String;

.field private static final FIELD_PERIOD_INDEX:Ljava/lang/String;

.field private static final FIELD_STREAM_INDEX:Ljava/lang/String;


# instance fields
.field public final groupIndex:I

.field public final periodIndex:I

.field public final streamIndex:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 139
    new-instance v0, Lcom/google/android/exoplayer2/offline/StreamKey$1;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/offline/StreamKey$1;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/offline/StreamKey;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 155
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/offline/StreamKey;->FIELD_PERIOD_INDEX:Ljava/lang/String;

    .line 156
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/offline/StreamKey;->FIELD_GROUP_INDEX:Ljava/lang/String;

    .line 157
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/offline/StreamKey;->FIELD_STREAM_INDEX:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(II)V
    .registers 4
    .param p1, "groupIndex"    # I
    .param p2, "streamIndex"    # I

    .line 61
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/exoplayer2/offline/StreamKey;-><init>(III)V

    .line 62
    return-void
.end method

.method public constructor <init>(III)V
    .registers 4
    .param p1, "periodIndex"    # I
    .param p2, "groupIndex"    # I
    .param p3, "streamIndex"    # I

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput p1, p0, Lcom/google/android/exoplayer2/offline/StreamKey;->periodIndex:I

    .line 73
    iput p2, p0, Lcom/google/android/exoplayer2/offline/StreamKey;->groupIndex:I

    .line 74
    iput p3, p0, Lcom/google/android/exoplayer2/offline/StreamKey;->streamIndex:I

    .line 75
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/offline/StreamKey;->periodIndex:I

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/offline/StreamKey;->groupIndex:I

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/offline/StreamKey;->streamIndex:I

    .line 81
    return-void
.end method

.method public static fromBundle(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/offline/StreamKey;
    .registers 6
    .param p0, "bundle"    # Landroid/os/Bundle;

    .line 179
    new-instance v0, Lcom/google/android/exoplayer2/offline/StreamKey;

    sget-object v1, Lcom/google/android/exoplayer2/offline/StreamKey;->FIELD_PERIOD_INDEX:Ljava/lang/String;

    .line 180
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    sget-object v3, Lcom/google/android/exoplayer2/offline/StreamKey;->FIELD_GROUP_INDEX:Ljava/lang/String;

    .line 181
    invoke-virtual {p0, v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    sget-object v4, Lcom/google/android/exoplayer2/offline/StreamKey;->FIELD_STREAM_INDEX:Ljava/lang/String;

    .line 182
    invoke-virtual {p0, v4, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-direct {v0, v1, v3, v2}, Lcom/google/android/exoplayer2/offline/StreamKey;-><init>(III)V

    .line 179
    return-object v0
.end method


# virtual methods
.method public compareTo(Lcom/google/android/exoplayer2/offline/StreamKey;)I
    .registers 5
    .param p1, "o"    # Lcom/google/android/exoplayer2/offline/StreamKey;

    .line 115
    iget v0, p0, Lcom/google/android/exoplayer2/offline/StreamKey;->periodIndex:I

    iget v1, p1, Lcom/google/android/exoplayer2/offline/StreamKey;->periodIndex:I

    sub-int/2addr v0, v1

    .line 116
    .local v0, "result":I
    if-nez v0, :cond_15

    .line 117
    iget v1, p0, Lcom/google/android/exoplayer2/offline/StreamKey;->groupIndex:I

    iget v2, p1, Lcom/google/android/exoplayer2/offline/StreamKey;->groupIndex:I

    sub-int v0, v1, v2

    .line 118
    if-nez v0, :cond_15

    .line 119
    iget v1, p0, Lcom/google/android/exoplayer2/offline/StreamKey;->streamIndex:I

    iget v2, p1, Lcom/google/android/exoplayer2/offline/StreamKey;->streamIndex:I

    sub-int v0, v1, v2

    .line 122
    :cond_15
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 44
    check-cast p1, Lcom/google/android/exoplayer2/offline/StreamKey;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/offline/StreamKey;->compareTo(Lcom/google/android/exoplayer2/offline/StreamKey;)I

    move-result p1

    return p1
.end method

.method public describeContents()I
    .registers 2

    .line 129
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 90
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 91
    return v0

    .line 93
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_2a

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_2a

    .line 97
    :cond_12
    move-object v2, p1

    check-cast v2, Lcom/google/android/exoplayer2/offline/StreamKey;

    .line 98
    .local v2, "that":Lcom/google/android/exoplayer2/offline/StreamKey;
    iget v3, p0, Lcom/google/android/exoplayer2/offline/StreamKey;->periodIndex:I

    iget v4, v2, Lcom/google/android/exoplayer2/offline/StreamKey;->periodIndex:I

    if-ne v3, v4, :cond_28

    iget v3, p0, Lcom/google/android/exoplayer2/offline/StreamKey;->groupIndex:I

    iget v4, v2, Lcom/google/android/exoplayer2/offline/StreamKey;->groupIndex:I

    if-ne v3, v4, :cond_28

    iget v3, p0, Lcom/google/android/exoplayer2/offline/StreamKey;->streamIndex:I

    iget v4, v2, Lcom/google/android/exoplayer2/offline/StreamKey;->streamIndex:I

    if-ne v3, v4, :cond_28

    goto :goto_29

    :cond_28
    const/4 v0, 0x0

    :goto_29
    return v0

    .line 94
    .end local v2    # "that":Lcom/google/android/exoplayer2/offline/StreamKey;
    :cond_2a
    :goto_2a
    return v1
.end method

.method public hashCode()I
    .registers 4

    .line 105
    iget v0, p0, Lcom/google/android/exoplayer2/offline/StreamKey;->periodIndex:I

    .line 106
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/android/exoplayer2/offline/StreamKey;->groupIndex:I

    add-int/2addr v1, v2

    .line 107
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Lcom/google/android/exoplayer2/offline/StreamKey;->streamIndex:I

    add-int/2addr v0, v2

    .line 108
    .end local v1    # "result":I
    .restart local v0    # "result":I
    return v0
.end method

.method public toBundle()Landroid/os/Bundle;
    .registers 4

    .line 161
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 162
    .local v0, "bundle":Landroid/os/Bundle;
    iget v1, p0, Lcom/google/android/exoplayer2/offline/StreamKey;->periodIndex:I

    if-eqz v1, :cond_e

    .line 163
    sget-object v2, Lcom/google/android/exoplayer2/offline/StreamKey;->FIELD_PERIOD_INDEX:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 165
    :cond_e
    iget v1, p0, Lcom/google/android/exoplayer2/offline/StreamKey;->groupIndex:I

    if-eqz v1, :cond_17

    .line 166
    sget-object v2, Lcom/google/android/exoplayer2/offline/StreamKey;->FIELD_GROUP_INDEX:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 168
    :cond_17
    iget v1, p0, Lcom/google/android/exoplayer2/offline/StreamKey;->streamIndex:I

    if-eqz v1, :cond_20

    .line 169
    sget-object v2, Lcom/google/android/exoplayer2/offline/StreamKey;->FIELD_STREAM_INDEX:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 171
    :cond_20
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/google/android/exoplayer2/offline/StreamKey;->periodIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/google/android/exoplayer2/offline/StreamKey;->groupIndex:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/exoplayer2/offline/StreamKey;->streamIndex:I

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

    .line 134
    iget v0, p0, Lcom/google/android/exoplayer2/offline/StreamKey;->periodIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 135
    iget v0, p0, Lcom/google/android/exoplayer2/offline/StreamKey;->groupIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 136
    iget v0, p0, Lcom/google/android/exoplayer2/offline/StreamKey;->streamIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 137
    return-void
.end method
