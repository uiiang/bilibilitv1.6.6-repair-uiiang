.class public final Lcom/google/android/exoplayer2/Tracks$Group;
.super Ljava/lang/Object;
.source "Tracks.java"

# interfaces
.implements Lcom/google/android/exoplayer2/Bundleable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/Tracks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Group"
.end annotation


# static fields
.field public static final CREATOR:Lcom/google/android/exoplayer2/Bundleable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/Bundleable$Creator<",
            "Lcom/google/android/exoplayer2/Tracks$Group;",
            ">;"
        }
    .end annotation
.end field

.field private static final FIELD_ADAPTIVE_SUPPORTED:Ljava/lang/String;

.field private static final FIELD_TRACK_GROUP:Ljava/lang/String;

.field private static final FIELD_TRACK_SELECTED:Ljava/lang/String;

.field private static final FIELD_TRACK_SUPPORT:Ljava/lang/String;


# instance fields
.field private final adaptiveSupported:Z

.field public final length:I

.field private final mediaTrackGroup:Lcom/google/android/exoplayer2/source/TrackGroup;

.field private final trackSelected:[Z

.field private final trackSupport:[I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 237
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/Tracks$Group;->FIELD_TRACK_GROUP:Ljava/lang/String;

    .line 238
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/Tracks$Group;->FIELD_TRACK_SUPPORT:Ljava/lang/String;

    .line 239
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/Tracks$Group;->FIELD_TRACK_SELECTED:Ljava/lang/String;

    .line 240
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/Tracks$Group;->FIELD_ADAPTIVE_SUPPORTED:Ljava/lang/String;

    .line 253
    new-instance v0, Lcom/google/android/exoplayer2/Tracks$Group$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/Tracks$Group$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/Tracks$Group;->CREATOR:Lcom/google/android/exoplayer2/Bundleable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/source/TrackGroup;Z[I[Z)V
    .registers 9
    .param p1, "mediaTrackGroup"    # Lcom/google/android/exoplayer2/source/TrackGroup;
    .param p2, "adaptiveSupported"    # Z
    .param p3, "trackSupport"    # [I
    .param p4, "trackSelected"    # [Z

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iget v0, p1, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    iput v0, p0, Lcom/google/android/exoplayer2/Tracks$Group;->length:I

    .line 74
    array-length v1, p3

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_11

    array-length v1, p4

    if-ne v0, v1, :cond_11

    const/4 v1, 0x1

    goto :goto_12

    :cond_11
    const/4 v1, 0x0

    :goto_12
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 75
    iput-object p1, p0, Lcom/google/android/exoplayer2/Tracks$Group;->mediaTrackGroup:Lcom/google/android/exoplayer2/source/TrackGroup;

    .line 76
    if-eqz p2, :cond_1c

    if-le v0, v3, :cond_1c

    const/4 v2, 0x1

    :cond_1c
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/Tracks$Group;->adaptiveSupported:Z

    .line 77
    invoke-virtual {p3}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Lcom/google/android/exoplayer2/Tracks$Group;->trackSupport:[I

    .line 78
    invoke-virtual {p4}, [Z->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    iput-object v0, p0, Lcom/google/android/exoplayer2/Tracks$Group;->trackSelected:[Z

    .line 79
    return-void
.end method

.method static synthetic lambda$static$0(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/Tracks$Group;
    .registers 6
    .param p0, "bundle"    # Landroid/os/Bundle;

    .line 256
    sget-object v0, Lcom/google/android/exoplayer2/source/TrackGroup;->CREATOR:Lcom/google/android/exoplayer2/Bundleable$Creator;

    sget-object v1, Lcom/google/android/exoplayer2/Tracks$Group;->FIELD_TRACK_GROUP:Ljava/lang/String;

    .line 257
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/Bundleable$Creator;->fromBundle(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/Bundleable;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/TrackGroup;

    .line 258
    .local v0, "trackGroup":Lcom/google/android/exoplayer2/source/TrackGroup;
    sget-object v1, Lcom/google/android/exoplayer2/Tracks$Group;->FIELD_TRACK_SUPPORT:Ljava/lang/String;

    .line 260
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v1

    iget v2, v0, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    new-array v2, v2, [I

    .line 259
    invoke-static {v1, v2}, Lcom/google/common/base/MoreObjects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    .line 261
    .local v1, "trackSupport":[I
    sget-object v2, Lcom/google/android/exoplayer2/Tracks$Group;->FIELD_TRACK_SELECTED:Ljava/lang/String;

    .line 263
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getBooleanArray(Ljava/lang/String;)[Z

    move-result-object v2

    iget v3, v0, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    new-array v3, v3, [Z

    .line 262
    invoke-static {v2, v3}, Lcom/google/common/base/MoreObjects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Z

    .line 264
    .local v2, "selected":[Z
    sget-object v3, Lcom/google/android/exoplayer2/Tracks$Group;->FIELD_ADAPTIVE_SUPPORTED:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 265
    .local v3, "adaptiveSupported":Z
    new-instance v4, Lcom/google/android/exoplayer2/Tracks$Group;

    invoke-direct {v4, v0, v3, v1, v2}, Lcom/google/android/exoplayer2/Tracks$Group;-><init>(Lcom/google/android/exoplayer2/source/TrackGroup;Z[I[Z)V

    return-object v4
.end method


# virtual methods
.method public copyWithId(Ljava/lang/String;)Lcom/google/android/exoplayer2/Tracks$Group;
    .registers 7
    .param p1, "groupId"    # Ljava/lang/String;

    .line 207
    new-instance v0, Lcom/google/android/exoplayer2/Tracks$Group;

    iget-object v1, p0, Lcom/google/android/exoplayer2/Tracks$Group;->mediaTrackGroup:Lcom/google/android/exoplayer2/source/TrackGroup;

    .line 208
    invoke-virtual {v1, p1}, Lcom/google/android/exoplayer2/source/TrackGroup;->copyWithId(Ljava/lang/String;)Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/Tracks$Group;->adaptiveSupported:Z

    iget-object v3, p0, Lcom/google/android/exoplayer2/Tracks$Group;->trackSupport:[I

    iget-object v4, p0, Lcom/google/android/exoplayer2/Tracks$Group;->trackSelected:[Z

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/exoplayer2/Tracks$Group;-><init>(Lcom/google/android/exoplayer2/source/TrackGroup;Z[I[Z)V

    .line 207
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "other"    # Ljava/lang/Object;

    .line 213
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 214
    return v0

    .line 216
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_3c

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_3c

    .line 219
    :cond_12
    move-object v2, p1

    check-cast v2, Lcom/google/android/exoplayer2/Tracks$Group;

    .line 220
    .local v2, "that":Lcom/google/android/exoplayer2/Tracks$Group;
    iget-boolean v3, p0, Lcom/google/android/exoplayer2/Tracks$Group;->adaptiveSupported:Z

    iget-boolean v4, v2, Lcom/google/android/exoplayer2/Tracks$Group;->adaptiveSupported:Z

    if-ne v3, v4, :cond_3a

    iget-object v3, p0, Lcom/google/android/exoplayer2/Tracks$Group;->mediaTrackGroup:Lcom/google/android/exoplayer2/source/TrackGroup;

    iget-object v4, v2, Lcom/google/android/exoplayer2/Tracks$Group;->mediaTrackGroup:Lcom/google/android/exoplayer2/source/TrackGroup;

    .line 221
    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/source/TrackGroup;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3a

    iget-object v3, p0, Lcom/google/android/exoplayer2/Tracks$Group;->trackSupport:[I

    iget-object v4, v2, Lcom/google/android/exoplayer2/Tracks$Group;->trackSupport:[I

    .line 222
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    if-eqz v3, :cond_3a

    iget-object v3, p0, Lcom/google/android/exoplayer2/Tracks$Group;->trackSelected:[Z

    iget-object v4, v2, Lcom/google/android/exoplayer2/Tracks$Group;->trackSelected:[Z

    .line 223
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Z[Z)Z

    move-result v3

    if-eqz v3, :cond_3a

    goto :goto_3b

    :cond_3a
    const/4 v0, 0x0

    .line 220
    :goto_3b
    return v0

    .line 217
    .end local v2    # "that":Lcom/google/android/exoplayer2/Tracks$Group;
    :cond_3c
    :goto_3c
    return v1
.end method

.method public getMediaTrackGroup()Lcom/google/android/exoplayer2/source/TrackGroup;
    .registers 2

    .line 90
    iget-object v0, p0, Lcom/google/android/exoplayer2/Tracks$Group;->mediaTrackGroup:Lcom/google/android/exoplayer2/source/TrackGroup;

    return-object v0
.end method

.method public getTrackFormat(I)Lcom/google/android/exoplayer2/Format;
    .registers 3
    .param p1, "trackIndex"    # I

    .line 100
    iget-object v0, p0, Lcom/google/android/exoplayer2/Tracks$Group;->mediaTrackGroup:Lcom/google/android/exoplayer2/source/TrackGroup;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/source/TrackGroup;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    return-object v0
.end method

.method public getTrackSupport(I)I
    .registers 3
    .param p1, "trackIndex"    # I

    .line 110
    iget-object v0, p0, Lcom/google/android/exoplayer2/Tracks$Group;->trackSupport:[I

    aget v0, v0, p1

    return v0
.end method

.method public getType()I
    .registers 2

    .line 197
    iget-object v0, p0, Lcom/google/android/exoplayer2/Tracks$Group;->mediaTrackGroup:Lcom/google/android/exoplayer2/source/TrackGroup;

    iget v0, v0, Lcom/google/android/exoplayer2/source/TrackGroup;->type:I

    return v0
.end method

.method public hashCode()I
    .registers 4

    .line 228
    iget-object v0, p0, Lcom/google/android/exoplayer2/Tracks$Group;->mediaTrackGroup:Lcom/google/android/exoplayer2/source/TrackGroup;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/TrackGroup;->hashCode()I

    move-result v0

    .line 229
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/Tracks$Group;->adaptiveSupported:Z

    add-int/2addr v1, v2

    .line 230
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/google/android/exoplayer2/Tracks$Group;->trackSupport:[I

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([I)I

    move-result v2

    add-int/2addr v0, v2

    .line 231
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/exoplayer2/Tracks$Group;->trackSelected:[Z

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([Z)I

    move-result v2

    add-int/2addr v1, v2

    .line 232
    .end local v0    # "result":I
    .restart local v1    # "result":I
    return v1
.end method

.method public isAdaptiveSupported()Z
    .registers 2

    .line 148
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/Tracks$Group;->adaptiveSupported:Z

    return v0
.end method

.method public isSelected()Z
    .registers 3

    .line 143
    iget-object v0, p0, Lcom/google/android/exoplayer2/Tracks$Group;->trackSelected:[Z

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/common/primitives/Booleans;->contains([ZZ)Z

    move-result v0

    return v0
.end method

.method public isSupported()Z
    .registers 2

    .line 156
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/Tracks$Group;->isSupported(Z)Z

    move-result v0

    return v0
.end method

.method public isSupported(Z)Z
    .registers 4
    .param p1, "allowExceedsCapabilities"    # Z

    .line 169
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/Tracks$Group;->trackSupport:[I

    array-length v1, v1

    if-ge v0, v1, :cond_11

    .line 170
    invoke-virtual {p0, v0, p1}, Lcom/google/android/exoplayer2/Tracks$Group;->isTrackSupported(IZ)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 171
    const/4 v1, 0x1

    return v1

    .line 169
    :cond_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 174
    .end local v0    # "i":I
    :cond_11
    const/4 v0, 0x0

    return v0
.end method

.method public isTrackSelected(I)Z
    .registers 3
    .param p1, "trackIndex"    # I

    .line 192
    iget-object v0, p0, Lcom/google/android/exoplayer2/Tracks$Group;->trackSelected:[Z

    aget-boolean v0, v0, p1

    return v0
.end method

.method public isTrackSupported(I)Z
    .registers 3
    .param p1, "trackIndex"    # I

    .line 121
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/exoplayer2/Tracks$Group;->isTrackSupported(IZ)Z

    move-result v0

    return v0
.end method

.method public isTrackSupported(IZ)Z
    .registers 5
    .param p1, "trackIndex"    # I
    .param p2, "allowExceedsCapabilities"    # Z

    .line 136
    iget-object v0, p0, Lcom/google/android/exoplayer2/Tracks$Group;->trackSupport:[I

    aget v0, v0, p1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_f

    if-eqz p2, :cond_d

    const/4 v1, 0x3

    if-ne v0, v1, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method public toBundle()Landroid/os/Bundle;
    .registers 4

    .line 244
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 245
    .local v0, "bundle":Landroid/os/Bundle;
    sget-object v1, Lcom/google/android/exoplayer2/Tracks$Group;->FIELD_TRACK_GROUP:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/exoplayer2/Tracks$Group;->mediaTrackGroup:Lcom/google/android/exoplayer2/source/TrackGroup;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/source/TrackGroup;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 246
    sget-object v1, Lcom/google/android/exoplayer2/Tracks$Group;->FIELD_TRACK_SUPPORT:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/exoplayer2/Tracks$Group;->trackSupport:[I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 247
    sget-object v1, Lcom/google/android/exoplayer2/Tracks$Group;->FIELD_TRACK_SELECTED:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/exoplayer2/Tracks$Group;->trackSelected:[Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBooleanArray(Ljava/lang/String;[Z)V

    .line 248
    sget-object v1, Lcom/google/android/exoplayer2/Tracks$Group;->FIELD_ADAPTIVE_SUPPORTED:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/Tracks$Group;->adaptiveSupported:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 249
    return-object v0
.end method
