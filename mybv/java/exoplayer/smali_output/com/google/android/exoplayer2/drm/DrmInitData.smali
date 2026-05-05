.class public final Lcom/google/android/exoplayer2/drm/DrmInitData;
.super Ljava/lang/Object;
.source "DrmInitData.java"

# interfaces
.implements Ljava/util/Comparator;
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/exoplayer2/drm/DrmInitData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private hashCode:I

.field public final schemeDataCount:I

.field private final schemeDatas:[Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;

.field public final schemeType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 238
    new-instance v0, Lcom/google/android/exoplayer2/drm/DrmInitData$1;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/drm/DrmInitData$1;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/drm/DrmInitData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/drm/DrmInitData;->schemeType:Ljava/lang/String;

    .line 148
    sget-object v0, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;

    iput-object v0, p0, Lcom/google/android/exoplayer2/drm/DrmInitData;->schemeDatas:[Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;

    .line 149
    array-length v0, v0

    iput v0, p0, Lcom/google/android/exoplayer2/drm/DrmInitData;->schemeDataCount:I

    .line 150
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .registers 5
    .param p1, "schemeType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;",
            ">;)V"
        }
    .end annotation

    .line 115
    .local p2, "schemeDatas":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;>;"
    const/4 v0, 0x0

    new-array v1, v0, [Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;

    invoke-interface {p2, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/exoplayer2/drm/DrmInitData;-><init>(Ljava/lang/String;Z[Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;)V

    .line 116
    return-void
.end method

.method private varargs constructor <init>(Ljava/lang/String;Z[Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;)V
    .registers 5
    .param p1, "schemeType"    # Ljava/lang/String;
    .param p2, "cloneSchemeDatas"    # Z
    .param p3, "schemeDatas"    # [Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    iput-object p1, p0, Lcom/google/android/exoplayer2/drm/DrmInitData;->schemeType:Ljava/lang/String;

    .line 136
    if-eqz p2, :cond_e

    .line 137
    invoke-virtual {p3}, [Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;->clone()Ljava/lang/Object;

    move-result-object v0

    move-object p3, v0

    check-cast p3, [Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;

    .line 139
    :cond_e
    iput-object p3, p0, Lcom/google/android/exoplayer2/drm/DrmInitData;->schemeDatas:[Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;

    .line 140
    array-length v0, p3

    iput v0, p0, Lcom/google/android/exoplayer2/drm/DrmInitData;->schemeDataCount:I

    .line 143
    invoke-static {p3, p0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 144
    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;[Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;)V
    .registers 4
    .param p1, "schemeType"    # Ljava/lang/String;
    .param p2, "schemeDatas"    # [Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;

    .line 130
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lcom/google/android/exoplayer2/drm/DrmInitData;-><init>(Ljava/lang/String;Z[Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;)V

    .line 131
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;",
            ">;)V"
        }
    .end annotation

    .line 107
    .local p1, "schemeDatas":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;>;"
    const/4 v0, 0x0

    new-array v1, v0, [Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;

    invoke-interface {p1, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Lcom/google/android/exoplayer2/drm/DrmInitData;-><init>(Ljava/lang/String;Z[Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;)V

    .line 108
    return-void
.end method

.method public varargs constructor <init>([Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;)V
    .registers 3
    .param p1, "schemeDatas"    # [Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;

    .line 122
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/google/android/exoplayer2/drm/DrmInitData;-><init>(Ljava/lang/String;[Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;)V

    .line 123
    return-void
.end method

.method private static containsSchemeDataWithUuid(Ljava/util/ArrayList;ILjava/util/UUID;)Z
    .registers 5
    .param p1, "limit"    # I
    .param p2, "uuid"    # Ljava/util/UUID;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;",
            ">;I",
            "Ljava/util/UUID;",
            ")Z"
        }
    .end annotation

    .line 256
    .local p0, "datas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, p1, :cond_16

    .line 257
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;

    iget-object v1, v1, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;->uuid:Ljava/util/UUID;

    invoke-virtual {v1, p2}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 258
    const/4 v1, 0x1

    return v1

    .line 256
    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 261
    .end local v0    # "i":I
    :cond_16
    const/4 v0, 0x0

    return v0
.end method

.method public static createSessionCreationData(Lcom/google/android/exoplayer2/drm/DrmInitData;Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/drm/DrmInitData;
    .registers 10
    .param p0, "manifestData"    # Lcom/google/android/exoplayer2/drm/DrmInitData;
    .param p1, "mediaData"    # Lcom/google/android/exoplayer2/drm/DrmInitData;

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 67
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;>;"
    const/4 v1, 0x0

    .line 68
    .local v1, "schemeType":Ljava/lang/String;
    const/4 v2, 0x0

    if-eqz p0, :cond_1f

    .line 69
    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/DrmInitData;->schemeType:Ljava/lang/String;

    .line 70
    iget-object v3, p0, Lcom/google/android/exoplayer2/drm/DrmInitData;->schemeDatas:[Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;

    array-length v4, v3

    const/4 v5, 0x0

    :goto_f
    if-ge v5, v4, :cond_1f

    aget-object v6, v3, v5

    .line 71
    .local v6, "data":Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;
    invoke-virtual {v6}, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;->hasData()Z

    move-result v7

    if-eqz v7, :cond_1c

    .line 72
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    .end local v6    # "data":Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;
    :cond_1c
    add-int/lit8 v5, v5, 0x1

    goto :goto_f

    .line 77
    :cond_1f
    if-eqz p1, :cond_44

    .line 78
    if-nez v1, :cond_25

    .line 79
    iget-object v1, p1, Lcom/google/android/exoplayer2/drm/DrmInitData;->schemeType:Ljava/lang/String;

    .line 81
    :cond_25
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 82
    .local v3, "manifestDatasCount":I
    iget-object v4, p1, Lcom/google/android/exoplayer2/drm/DrmInitData;->schemeDatas:[Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;

    array-length v5, v4

    :goto_2c
    if-ge v2, v5, :cond_44

    aget-object v6, v4, v2

    .line 83
    .restart local v6    # "data":Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;
    invoke-virtual {v6}, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;->hasData()Z

    move-result v7

    if-eqz v7, :cond_41

    iget-object v7, v6, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;->uuid:Ljava/util/UUID;

    invoke-static {v0, v3, v7}, Lcom/google/android/exoplayer2/drm/DrmInitData;->containsSchemeDataWithUuid(Ljava/util/ArrayList;ILjava/util/UUID;)Z

    move-result v7

    if-nez v7, :cond_41

    .line 84
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    .end local v6    # "data":Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;
    :cond_41
    add-int/lit8 v2, v2, 0x1

    goto :goto_2c

    .line 89
    .end local v3    # "manifestDatasCount":I
    :cond_44
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4c

    const/4 v2, 0x0

    goto :goto_51

    :cond_4c
    new-instance v2, Lcom/google/android/exoplayer2/drm/DrmInitData;

    invoke-direct {v2, v1, v0}, Lcom/google/android/exoplayer2/drm/DrmInitData;-><init>(Ljava/lang/String;Ljava/util/List;)V

    :goto_51
    return-object v2
.end method


# virtual methods
.method public compare(Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;)I
    .registers 5
    .param p1, "first"    # Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;
    .param p2, "second"    # Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;

    .line 220
    sget-object v0, Lcom/google/android/exoplayer2/C;->UUID_NIL:Ljava/util/UUID;

    iget-object v1, p1, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;->uuid:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 221
    sget-object v0, Lcom/google/android/exoplayer2/C;->UUID_NIL:Ljava/util/UUID;

    iget-object v1, p2, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;->uuid:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x0

    goto :goto_20

    :cond_16
    const/4 v0, 0x1

    goto :goto_20

    .line 222
    :cond_18
    iget-object v0, p1, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;->uuid:Ljava/util/UUID;

    iget-object v1, p2, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;->uuid:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/util/UUID;->compareTo(Ljava/util/UUID;)I

    move-result v0

    .line 220
    :goto_20
    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 41
    check-cast p1, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;

    check-cast p2, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/drm/DrmInitData;->compare(Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;)I

    move-result p1

    return p1
.end method

.method public copyWithSchemeType(Ljava/lang/String;)Lcom/google/android/exoplayer2/drm/DrmInitData;
    .registers 5
    .param p1, "schemeType"    # Ljava/lang/String;

    .line 170
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DrmInitData;->schemeType:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 171
    return-object p0

    .line 173
    :cond_9
    new-instance v0, Lcom/google/android/exoplayer2/drm/DrmInitData;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/exoplayer2/drm/DrmInitData;->schemeDatas:[Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;

    invoke-direct {v0, p1, v1, v2}, Lcom/google/android/exoplayer2/drm/DrmInitData;-><init>(Ljava/lang/String;Z[Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;)V

    return-object v0
.end method

.method public describeContents()I
    .registers 2

    .line 229
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 207
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 208
    return v0

    .line 210
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_2c

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_2c

    .line 213
    :cond_12
    move-object v2, p1

    check-cast v2, Lcom/google/android/exoplayer2/drm/DrmInitData;

    .line 214
    .local v2, "other":Lcom/google/android/exoplayer2/drm/DrmInitData;
    iget-object v3, p0, Lcom/google/android/exoplayer2/drm/DrmInitData;->schemeType:Ljava/lang/String;

    iget-object v4, v2, Lcom/google/android/exoplayer2/drm/DrmInitData;->schemeType:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    iget-object v3, p0, Lcom/google/android/exoplayer2/drm/DrmInitData;->schemeDatas:[Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;

    iget-object v4, v2, Lcom/google/android/exoplayer2/drm/DrmInitData;->schemeDatas:[Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;

    .line 215
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    goto :goto_2b

    :cond_2a
    const/4 v0, 0x0

    .line 214
    :goto_2b
    return v0

    .line 211
    .end local v2    # "other":Lcom/google/android/exoplayer2/drm/DrmInitData;
    :cond_2c
    :goto_2c
    return v1
.end method

.method public get(I)Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;
    .registers 3
    .param p1, "index"    # I

    .line 159
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DrmInitData;->schemeDatas:[Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    .line 197
    iget v0, p0, Lcom/google/android/exoplayer2/drm/DrmInitData;->hashCode:I

    if-nez v0, :cond_19

    .line 198
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DrmInitData;->schemeType:Ljava/lang/String;

    if-nez v0, :cond_a

    const/4 v0, 0x0

    goto :goto_e

    :cond_a
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 199
    .local v0, "result":I
    :goto_e
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/exoplayer2/drm/DrmInitData;->schemeDatas:[Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 200
    .end local v0    # "result":I
    .local v1, "result":I
    iput v1, p0, Lcom/google/android/exoplayer2/drm/DrmInitData;->hashCode:I

    .line 202
    .end local v1    # "result":I
    :cond_19
    iget v0, p0, Lcom/google/android/exoplayer2/drm/DrmInitData;->hashCode:I

    return v0
.end method

.method public merge(Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/drm/DrmInitData;
    .registers 5
    .param p1, "drmInitData"    # Lcom/google/android/exoplayer2/drm/DrmInitData;

    .line 185
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DrmInitData;->schemeType:Ljava/lang/String;

    if-eqz v0, :cond_11

    iget-object v1, p1, Lcom/google/android/exoplayer2/drm/DrmInitData;->schemeType:Ljava/lang/String;

    if-eqz v1, :cond_11

    .line 188
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_11

    :cond_f
    const/4 v0, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 v0, 0x1

    .line 185
    :goto_12
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 189
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DrmInitData;->schemeType:Ljava/lang/String;

    if-eqz v0, :cond_1a

    goto :goto_1c

    :cond_1a
    iget-object v0, p1, Lcom/google/android/exoplayer2/drm/DrmInitData;->schemeType:Ljava/lang/String;

    .line 190
    .local v0, "mergedSchemeType":Ljava/lang/String;
    :goto_1c
    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/DrmInitData;->schemeDatas:[Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;

    iget-object v2, p1, Lcom/google/android/exoplayer2/drm/DrmInitData;->schemeDatas:[Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;

    .line 191
    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/util/Util;->nullSafeArrayConcatenation([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;

    .line 192
    .local v1, "mergedSchemeDatas":[Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;
    new-instance v2, Lcom/google/android/exoplayer2/drm/DrmInitData;

    invoke-direct {v2, v0, v1}, Lcom/google/android/exoplayer2/drm/DrmInitData;-><init>(Ljava/lang/String;[Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;)V

    return-object v2
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 234
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DrmInitData;->schemeType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 235
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DrmInitData;->schemeDatas:[Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 236
    return-void
.end method
