.class public final Lcom/google/android/exoplayer2/source/TrackGroup;
.super Ljava/lang/Object;
.source "TrackGroup.java"

# interfaces
.implements Lcom/google/android/exoplayer2/Bundleable;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final CREATOR:Lcom/google/android/exoplayer2/Bundleable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/Bundleable$Creator<",
            "Lcom/google/android/exoplayer2/source/TrackGroup;",
            ">;"
        }
    .end annotation
.end field

.field private static final FIELD_FORMATS:Ljava/lang/String;

.field private static final FIELD_ID:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "TrackGroup"


# instance fields
.field private final formats:[Lcom/google/android/exoplayer2/Format;

.field private hashCode:I

.field public final id:Ljava/lang/String;

.field public final length:I

.field public final type:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 168
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/source/TrackGroup;->FIELD_FORMATS:Ljava/lang/String;

    .line 169
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/source/TrackGroup;->FIELD_ID:Ljava/lang/String;

    .line 184
    new-instance v0, Lcom/google/android/exoplayer2/source/TrackGroup$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/source/TrackGroup$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/source/TrackGroup;->CREATOR:Lcom/google/android/exoplayer2/Bundleable$Creator;

    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;[Lcom/google/android/exoplayer2/Format;)V
    .registers 6
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "formats"    # [Lcom/google/android/exoplayer2/Format;

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    array-length v0, p2

    const/4 v1, 0x0

    if-lez v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 94
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/TrackGroup;->id:Ljava/lang/String;

    .line 95
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/TrackGroup;->formats:[Lcom/google/android/exoplayer2/Format;

    .line 96
    array-length v0, p2

    iput v0, p0, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    .line 97
    aget-object v0, p2, v1

    iget-object v0, v0, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/MimeTypes;->getTrackType(Ljava/lang/String;)I

    move-result v0

    .line 98
    .local v0, "type":I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_27

    .line 99
    aget-object v1, p2, v1

    iget-object v1, v1, Lcom/google/android/exoplayer2/Format;->containerMimeType:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/MimeTypes;->getTrackType(Ljava/lang/String;)I

    move-result v0

    .line 101
    :cond_27
    iput v0, p0, Lcom/google/android/exoplayer2/source/TrackGroup;->type:I

    .line 102
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/TrackGroup;->verifyCorrectness()V

    .line 103
    return-void
.end method

.method public varargs constructor <init>([Lcom/google/android/exoplayer2/Format;)V
    .registers 3
    .param p1, "formats"    # [Lcom/google/android/exoplayer2/Format;

    .line 83
    const-string v0, ""

    invoke-direct {p0, v0, p1}, Lcom/google/android/exoplayer2/source/TrackGroup;-><init>(Ljava/lang/String;[Lcom/google/android/exoplayer2/Format;)V

    .line 84
    return-void
.end method

.method static synthetic lambda$static$0(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/source/TrackGroup;
    .registers 6
    .param p0, "bundle"    # Landroid/os/Bundle;

    .line 186
    sget-object v0, Lcom/google/android/exoplayer2/source/TrackGroup;->FIELD_FORMATS:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 188
    .local v0, "formatBundles":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    if-nez v0, :cond_d

    .line 189
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    goto :goto_13

    .line 190
    :cond_d
    sget-object v1, Lcom/google/android/exoplayer2/Format;->CREATOR:Lcom/google/android/exoplayer2/Bundleable$Creator;

    invoke-static {v1, v0}, Lcom/google/android/exoplayer2/util/BundleableUtil;->fromBundleList(Lcom/google/android/exoplayer2/Bundleable$Creator;Ljava/util/List;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    :goto_13
    nop

    .line 191
    .local v1, "formats":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/Format;>;"
    sget-object v2, Lcom/google/android/exoplayer2/source/TrackGroup;->FIELD_ID:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {p0, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 192
    .local v2, "id":Ljava/lang/String;
    new-instance v3, Lcom/google/android/exoplayer2/source/TrackGroup;

    const/4 v4, 0x0

    new-array v4, v4, [Lcom/google/android/exoplayer2/Format;

    invoke-interface {v1, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/google/android/exoplayer2/Format;

    invoke-direct {v3, v2, v4}, Lcom/google/android/exoplayer2/source/TrackGroup;-><init>(Ljava/lang/String;[Lcom/google/android/exoplayer2/Format;)V

    return-object v3
.end method

.method private static logErrorMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 7
    .param p0, "mismatchField"    # Ljava/lang/String;
    .param p1, "valueIndex0"    # Ljava/lang/String;
    .param p2, "otherValue"    # Ljava/lang/String;
    .param p3, "otherIndex"    # I

    .line 237
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Different "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " combined in one TrackGroup: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' (track 0) and \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' (track "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    const-string v1, "TrackGroup"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/google/android/exoplayer2/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 250
    return-void
.end method

.method private static normalizeLanguage(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "language"    # Ljava/lang/String;

    .line 224
    if-eqz p0, :cond_d

    const-string v0, "und"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_d

    :cond_b
    move-object v0, p0

    goto :goto_f

    :cond_d
    :goto_d
    const-string v0, ""

    :goto_f
    return-object v0
.end method

.method private static normalizeRoleFlags(I)I
    .registers 2
    .param p0, "roleFlags"    # I

    .line 229
    or-int/lit16 v0, p0, 0x4000

    return v0
.end method

.method private verifyCorrectness()V
    .registers 7

    .line 200
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/TrackGroup;->formats:[Lcom/google/android/exoplayer2/Format;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/google/android/exoplayer2/Format;->language:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/exoplayer2/source/TrackGroup;->normalizeLanguage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 201
    .local v0, "language":Ljava/lang/String;
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/TrackGroup;->formats:[Lcom/google/android/exoplayer2/Format;

    aget-object v2, v2, v1

    iget v2, v2, Lcom/google/android/exoplayer2/Format;->roleFlags:I

    invoke-static {v2}, Lcom/google/android/exoplayer2/source/TrackGroup;->normalizeRoleFlags(I)I

    move-result v2

    .line 202
    .local v2, "roleFlags":I
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_16
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/TrackGroup;->formats:[Lcom/google/android/exoplayer2/Format;

    array-length v5, v4

    if-ge v3, v5, :cond_64

    .line 203
    aget-object v4, v4, v3

    iget-object v4, v4, Lcom/google/android/exoplayer2/Format;->language:Ljava/lang/String;

    invoke-static {v4}, Lcom/google/android/exoplayer2/source/TrackGroup;->normalizeLanguage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3b

    .line 204
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/TrackGroup;->formats:[Lcom/google/android/exoplayer2/Format;

    aget-object v1, v4, v1

    iget-object v1, v1, Lcom/google/android/exoplayer2/Format;->language:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/exoplayer2/source/TrackGroup;->formats:[Lcom/google/android/exoplayer2/Format;

    aget-object v4, v4, v3

    iget-object v4, v4, Lcom/google/android/exoplayer2/Format;->language:Ljava/lang/String;

    const-string v5, "languages"

    invoke-static {v5, v1, v4, v3}, Lcom/google/android/exoplayer2/source/TrackGroup;->logErrorMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 209
    return-void

    .line 211
    :cond_3b
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/TrackGroup;->formats:[Lcom/google/android/exoplayer2/Format;

    aget-object v4, v4, v3

    iget v4, v4, Lcom/google/android/exoplayer2/Format;->roleFlags:I

    invoke-static {v4}, Lcom/google/android/exoplayer2/source/TrackGroup;->normalizeRoleFlags(I)I

    move-result v4

    if-eq v2, v4, :cond_61

    .line 212
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/TrackGroup;->formats:[Lcom/google/android/exoplayer2/Format;

    aget-object v1, v4, v1

    iget v1, v1, Lcom/google/android/exoplayer2/Format;->roleFlags:I

    .line 214
    invoke-static {v1}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/google/android/exoplayer2/source/TrackGroup;->formats:[Lcom/google/android/exoplayer2/Format;

    aget-object v4, v4, v3

    iget v4, v4, Lcom/google/android/exoplayer2/Format;->roleFlags:I

    .line 215
    invoke-static {v4}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v4

    .line 212
    const-string v5, "role flags"

    invoke-static {v5, v1, v4, v3}, Lcom/google/android/exoplayer2/source/TrackGroup;->logErrorMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 217
    return-void

    .line 202
    :cond_61
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    .line 220
    .end local v3    # "i":I
    :cond_64
    return-void
.end method


# virtual methods
.method public copyWithId(Ljava/lang/String;)Lcom/google/android/exoplayer2/source/TrackGroup;
    .registers 4
    .param p1, "id"    # Ljava/lang/String;

    .line 113
    new-instance v0, Lcom/google/android/exoplayer2/source/TrackGroup;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/TrackGroup;->formats:[Lcom/google/android/exoplayer2/Format;

    invoke-direct {v0, p1, v1}, Lcom/google/android/exoplayer2/source/TrackGroup;-><init>(Ljava/lang/String;[Lcom/google/android/exoplayer2/Format;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 157
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 158
    return v0

    .line 160
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_2c

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_2c

    .line 163
    :cond_12
    move-object v2, p1

    check-cast v2, Lcom/google/android/exoplayer2/source/TrackGroup;

    .line 164
    .local v2, "other":Lcom/google/android/exoplayer2/source/TrackGroup;
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/TrackGroup;->id:Ljava/lang/String;

    iget-object v4, v2, Lcom/google/android/exoplayer2/source/TrackGroup;->id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/TrackGroup;->formats:[Lcom/google/android/exoplayer2/Format;

    iget-object v4, v2, Lcom/google/android/exoplayer2/source/TrackGroup;->formats:[Lcom/google/android/exoplayer2/Format;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    goto :goto_2b

    :cond_2a
    const/4 v0, 0x0

    :goto_2b
    return v0

    .line 161
    .end local v2    # "other":Lcom/google/android/exoplayer2/source/TrackGroup;
    :cond_2c
    :goto_2c
    return v1
.end method

.method public getFormat(I)Lcom/google/android/exoplayer2/Format;
    .registers 3
    .param p1, "index"    # I

    .line 123
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/TrackGroup;->formats:[Lcom/google/android/exoplayer2/Format;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    .line 146
    iget v0, p0, Lcom/google/android/exoplayer2/source/TrackGroup;->hashCode:I

    if-nez v0, :cond_1a

    .line 147
    const/16 v0, 0x11

    .line 148
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/TrackGroup;->id:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 149
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/TrackGroup;->formats:[Lcom/google/android/exoplayer2/Format;

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 150
    .end local v1    # "result":I
    .restart local v0    # "result":I
    iput v0, p0, Lcom/google/android/exoplayer2/source/TrackGroup;->hashCode:I

    .line 152
    .end local v0    # "result":I
    :cond_1a
    iget v0, p0, Lcom/google/android/exoplayer2/source/TrackGroup;->hashCode:I

    return v0
.end method

.method public indexOf(Lcom/google/android/exoplayer2/Format;)I
    .registers 5
    .param p1, "format"    # Lcom/google/android/exoplayer2/Format;

    .line 136
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/TrackGroup;->formats:[Lcom/google/android/exoplayer2/Format;

    array-length v2, v1

    if-ge v0, v2, :cond_e

    .line 137
    aget-object v1, v1, v0

    if-ne p1, v1, :cond_b

    .line 138
    return v0

    .line 136
    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 141
    .end local v0    # "i":I
    :cond_e
    const/4 v0, -0x1

    return v0
.end method

.method public toBundle()Landroid/os/Bundle;
    .registers 8

    .line 173
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 174
    .local v0, "bundle":Landroid/os/Bundle;
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/TrackGroup;->formats:[Lcom/google/android/exoplayer2/Format;

    array-length v2, v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 175
    .local v1, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/TrackGroup;->formats:[Lcom/google/android/exoplayer2/Format;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_11
    if-ge v4, v3, :cond_20

    aget-object v5, v2, v4

    .line 176
    .local v5, "format":Lcom/google/android/exoplayer2/Format;
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/google/android/exoplayer2/Format;->toBundle(Z)Landroid/os/Bundle;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    .end local v5    # "format":Lcom/google/android/exoplayer2/Format;
    add-int/lit8 v4, v4, 0x1

    goto :goto_11

    .line 178
    :cond_20
    sget-object v2, Lcom/google/android/exoplayer2/source/TrackGroup;->FIELD_FORMATS:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 179
    sget-object v2, Lcom/google/android/exoplayer2/source/TrackGroup;->FIELD_ID:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/TrackGroup;->id:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    return-object v0
.end method
