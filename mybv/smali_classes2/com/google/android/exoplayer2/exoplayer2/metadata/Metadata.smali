.class public final Lcom/google/android/exoplayer2/metadata/Metadata;
.super Ljava/lang/Object;
.source "Metadata.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/metadata/Metadata$Entry;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/exoplayer2/metadata/Metadata;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final entries:[Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

.field public final presentationTimeUs:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 219
    new-instance v0, Lcom/google/android/exoplayer2/metadata/Metadata$1;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/metadata/Metadata$1;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/metadata/Metadata;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JLjava/util/List;)V
    .registers 5
    .param p1, "presentationTimeUs"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "+",
            "Lcom/google/android/exoplayer2/metadata/Metadata$Entry;",
            ">;)V"
        }
    .end annotation

    .line 109
    .local p3, "entries":Ljava/util/List;, "Ljava/util/List<+Lcom/google/android/exoplayer2/metadata/Metadata$Entry;>;"
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    invoke-interface {p3, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/exoplayer2/metadata/Metadata;-><init>(J[Lcom/google/android/exoplayer2/metadata/Metadata$Entry;)V

    .line 110
    return-void
.end method

.method public varargs constructor <init>(J[Lcom/google/android/exoplayer2/metadata/Metadata$Entry;)V
    .registers 4
    .param p1, "presentationTimeUs"    # J
    .param p3, "entries"    # [Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput-wide p1, p0, Lcom/google/android/exoplayer2/metadata/Metadata;->presentationTimeUs:J

    .line 94
    iput-object p3, p0, Lcom/google/android/exoplayer2/metadata/Metadata;->entries:[Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    .line 95
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 5
    .param p1, "in"    # Landroid/os/Parcel;

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    new-array v0, v0, [Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    iput-object v0, p0, Lcom/google/android/exoplayer2/metadata/Metadata;->entries:[Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    .line 114
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_c
    iget-object v1, p0, Lcom/google/android/exoplayer2/metadata/Metadata;->entries:[Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    array-length v2, v1

    if-ge v0, v2, :cond_22

    .line 115
    const-class v2, Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    aput-object v2, v1, v0

    .line 114
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 117
    .end local v0    # "i":I
    :cond_22
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/metadata/Metadata;->presentationTimeUs:J

    .line 118
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/google/android/exoplayer2/metadata/Metadata$Entry;",
            ">;)V"
        }
    .end annotation

    .line 101
    .local p1, "entries":Ljava/util/List;, "Ljava/util/List<+Lcom/google/android/exoplayer2/metadata/Metadata$Entry;>;"
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/metadata/Metadata;-><init>([Lcom/google/android/exoplayer2/metadata/Metadata$Entry;)V

    .line 102
    return-void
.end method

.method public varargs constructor <init>([Lcom/google/android/exoplayer2/metadata/Metadata$Entry;)V
    .registers 4
    .param p1, "entries"    # [Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    .line 85
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {p0, v0, v1, p1}, Lcom/google/android/exoplayer2/metadata/Metadata;-><init>(J[Lcom/google/android/exoplayer2/metadata/Metadata$Entry;)V

    .line 86
    return-void
.end method


# virtual methods
.method public varargs copyWithAppendedEntries([Lcom/google/android/exoplayer2/metadata/Metadata$Entry;)Lcom/google/android/exoplayer2/metadata/Metadata;
    .registers 6
    .param p1, "entriesToAppend"    # [Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    .line 157
    array-length v0, p1

    if-nez v0, :cond_4

    .line 158
    return-object p0

    .line 160
    :cond_4
    new-instance v0, Lcom/google/android/exoplayer2/metadata/Metadata;

    iget-wide v1, p0, Lcom/google/android/exoplayer2/metadata/Metadata;->presentationTimeUs:J

    iget-object v3, p0, Lcom/google/android/exoplayer2/metadata/Metadata;->entries:[Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    .line 161
    invoke-static {v3, p1}, Lcom/google/android/exoplayer2/util/Util;->nullSafeArrayConcatenation([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/exoplayer2/metadata/Metadata;-><init>(J[Lcom/google/android/exoplayer2/metadata/Metadata$Entry;)V

    .line 160
    return-object v0
.end method

.method public copyWithAppendedEntriesFrom(Lcom/google/android/exoplayer2/metadata/Metadata;)Lcom/google/android/exoplayer2/metadata/Metadata;
    .registers 3
    .param p1, "other"    # Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 144
    if-nez p1, :cond_3

    .line 145
    return-object p0

    .line 147
    :cond_3
    iget-object v0, p1, Lcom/google/android/exoplayer2/metadata/Metadata;->entries:[Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/metadata/Metadata;->copyWithAppendedEntries([Lcom/google/android/exoplayer2/metadata/Metadata$Entry;)Lcom/google/android/exoplayer2/metadata/Metadata;

    move-result-object v0

    return-object v0
.end method

.method public copyWithPresentationTimeUs(J)Lcom/google/android/exoplayer2/metadata/Metadata;
    .registers 6
    .param p1, "presentationTimeUs"    # J

    .line 171
    iget-wide v0, p0, Lcom/google/android/exoplayer2/metadata/Metadata;->presentationTimeUs:J

    cmp-long v2, v0, p1

    if-nez v2, :cond_7

    .line 172
    return-object p0

    .line 174
    :cond_7
    new-instance v0, Lcom/google/android/exoplayer2/metadata/Metadata;

    iget-object v1, p0, Lcom/google/android/exoplayer2/metadata/Metadata;->entries:[Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    invoke-direct {v0, p1, p2, v1}, Lcom/google/android/exoplayer2/metadata/Metadata;-><init>(J[Lcom/google/android/exoplayer2/metadata/Metadata$Entry;)V

    return-object v0
.end method

.method public describeContents()I
    .registers 2

    .line 207
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 10
    .param p1, "obj"    # Ljava/lang/Object;

    .line 179
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 180
    return v0

    .line 182
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_2a

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_2a

    .line 185
    :cond_12
    move-object v2, p1

    check-cast v2, Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 186
    .local v2, "other":Lcom/google/android/exoplayer2/metadata/Metadata;
    iget-object v3, p0, Lcom/google/android/exoplayer2/metadata/Metadata;->entries:[Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    iget-object v4, v2, Lcom/google/android/exoplayer2/metadata/Metadata;->entries:[Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    iget-wide v3, p0, Lcom/google/android/exoplayer2/metadata/Metadata;->presentationTimeUs:J

    iget-wide v5, v2, Lcom/google/android/exoplayer2/metadata/Metadata;->presentationTimeUs:J

    cmp-long v7, v3, v5

    if-nez v7, :cond_28

    goto :goto_29

    :cond_28
    const/4 v0, 0x0

    :goto_29
    return v0

    .line 183
    .end local v2    # "other":Lcom/google/android/exoplayer2/metadata/Metadata;
    :cond_2a
    :goto_2a
    return v1
.end method

.method public get(I)Lcom/google/android/exoplayer2/metadata/Metadata$Entry;
    .registers 3
    .param p1, "index"    # I

    .line 132
    iget-object v0, p0, Lcom/google/android/exoplayer2/metadata/Metadata;->entries:[Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public hashCode()I
    .registers 5

    .line 191
    iget-object v0, p0, Lcom/google/android/exoplayer2/metadata/Metadata;->entries:[Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 192
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lcom/google/android/exoplayer2/metadata/Metadata;->presentationTimeUs:J

    invoke-static {v2, v3}, Lcom/google/common/primitives/Longs;->hashCode(J)I

    move-result v2

    add-int/2addr v1, v2

    .line 193
    .end local v0    # "result":I
    .local v1, "result":I
    return v1
.end method

.method public length()I
    .registers 2

    .line 122
    iget-object v0, p0, Lcom/google/android/exoplayer2/metadata/Metadata;->entries:[Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    array-length v0, v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    .line 198
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "entries="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/metadata/Metadata;->entries:[Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    .line 199
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 200
    iget-wide v1, p0, Lcom/google/android/exoplayer2/metadata/Metadata;->presentationTimeUs:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v1, v3

    if-nez v5, :cond_23

    const-string v1, ""

    goto :goto_38

    :cond_23
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", presentationTimeUs="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/exoplayer2/metadata/Metadata;->presentationTimeUs:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 198
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 8
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 212
    iget-object v0, p0, Lcom/google/android/exoplayer2/metadata/Metadata;->entries:[Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 213
    iget-object v0, p0, Lcom/google/android/exoplayer2/metadata/Metadata;->entries:[Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_b
    if-ge v3, v1, :cond_15

    aget-object v4, v0, v3

    .line 214
    .local v4, "entry":Lcom/google/android/exoplayer2/metadata/Metadata$Entry;
    invoke-virtual {p1, v4, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 213
    .end local v4    # "entry":Lcom/google/android/exoplayer2/metadata/Metadata$Entry;
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 216
    :cond_15
    iget-wide v0, p0, Lcom/google/android/exoplayer2/metadata/Metadata;->presentationTimeUs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 217
    return-void
.end method
