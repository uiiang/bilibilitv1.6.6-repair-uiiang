.class public final Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;
.super Ljava/lang/Object;
.source "MappingTrackSelector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MappedTrackInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo$RendererSupport;
    }
.end annotation


# static fields
.field public static final RENDERER_SUPPORT_EXCEEDS_CAPABILITIES_TRACKS:I = 0x2

.field public static final RENDERER_SUPPORT_NO_TRACKS:I = 0x0

.field public static final RENDERER_SUPPORT_PLAYABLE_TRACKS:I = 0x3

.field public static final RENDERER_SUPPORT_UNSUPPORTED_TRACKS:I = 0x1


# instance fields
.field private final rendererCount:I

.field private final rendererFormatSupports:[[[I

.field private final rendererMixedMimeTypeAdaptiveSupports:[I

.field private final rendererNames:[Ljava/lang/String;

.field private final rendererTrackGroups:[Lcom/google/android/exoplayer2/source/TrackGroupArray;

.field private final rendererTrackTypes:[I

.field private final unmappedTrackGroups:Lcom/google/android/exoplayer2/source/TrackGroupArray;


# direct methods
.method constructor <init>([Ljava/lang/String;[I[Lcom/google/android/exoplayer2/source/TrackGroupArray;[I[[[ILcom/google/android/exoplayer2/source/TrackGroupArray;)V
    .registers 8
    .param p1, "rendererNames"    # [Ljava/lang/String;
    .param p2, "rendererTrackTypes"    # [I
    .param p3, "rendererTrackGroups"    # [Lcom/google/android/exoplayer2/source/TrackGroupArray;
    .param p4, "rendererMixedMimeTypeAdaptiveSupports"    # [I
    .param p5, "rendererFormatSupports"    # [[[I
    .param p6, "unmappedTrackGroups"    # Lcom/google/android/exoplayer2/source/TrackGroupArray;

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    iput-object p1, p0, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->rendererNames:[Ljava/lang/String;

    .line 134
    iput-object p2, p0, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->rendererTrackTypes:[I

    .line 135
    iput-object p3, p0, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->rendererTrackGroups:[Lcom/google/android/exoplayer2/source/TrackGroupArray;

    .line 136
    iput-object p5, p0, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->rendererFormatSupports:[[[I

    .line 137
    iput-object p4, p0, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->rendererMixedMimeTypeAdaptiveSupports:[I

    .line 138
    iput-object p6, p0, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->unmappedTrackGroups:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    .line 139
    array-length v0, p2

    iput v0, p0, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->rendererCount:I

    .line 140
    return-void
.end method


# virtual methods
.method public getAdaptiveSupport(IIZ)I
    .registers 10
    .param p1, "rendererIndex"    # I
    .param p2, "groupIndex"    # I
    .param p3, "includeCapabilitiesExceededTracks"    # Z

    .line 274
    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->rendererTrackGroups:[Lcom/google/android/exoplayer2/source/TrackGroupArray;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->get(I)Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v0

    iget v0, v0, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    .line 276
    .local v0, "trackCount":I
    new-array v1, v0, [I

    .line 277
    .local v1, "trackIndices":[I
    const/4 v2, 0x0

    .line 278
    .local v2, "trackIndexCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_e
    if-ge v3, v0, :cond_24

    .line 279
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getTrackSupport(III)I

    move-result v4

    .line 280
    .local v4, "fixedSupport":I
    const/4 v5, 0x4

    if-eq v4, v5, :cond_1c

    if-eqz p3, :cond_21

    const/4 v5, 0x3

    if-ne v4, v5, :cond_21

    .line 283
    :cond_1c
    add-int/lit8 v5, v2, 0x1

    .end local v2    # "trackIndexCount":I
    .local v5, "trackIndexCount":I
    aput v3, v1, v2

    move v2, v5

    .line 278
    .end local v4    # "fixedSupport":I
    .end local v5    # "trackIndexCount":I
    .restart local v2    # "trackIndexCount":I
    :cond_21
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 286
    .end local v3    # "i":I
    :cond_24
    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    .line 287
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getAdaptiveSupport(II[I)I

    move-result v3

    return v3
.end method

.method public getAdaptiveSupport(II[I)I
    .registers 12
    .param p1, "rendererIndex"    # I
    .param p2, "groupIndex"    # I
    .param p3, "trackIndices"    # [I

    .line 301
    const/4 v0, 0x0

    .line 302
    .local v0, "handledTrackCount":I
    const/16 v1, 0x10

    .line 303
    .local v1, "adaptiveSupport":I
    const/4 v2, 0x0

    .line 304
    .local v2, "multipleMimeTypes":Z
    const/4 v3, 0x0

    .line 305
    .local v3, "firstSampleMimeType":Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_6
    array-length v5, p3

    if-ge v4, v5, :cond_3c

    .line 306
    aget v5, p3, v4

    .line 308
    .local v5, "trackIndex":I
    iget-object v6, p0, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->rendererTrackGroups:[Lcom/google/android/exoplayer2/source/TrackGroupArray;

    aget-object v6, v6, p1

    .line 309
    invoke-virtual {v6, p2}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->get(I)Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/google/android/exoplayer2/source/TrackGroup;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v6

    iget-object v6, v6, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    .line 310
    .local v6, "sampleMimeType":Ljava/lang/String;
    add-int/lit8 v7, v0, 0x1

    .end local v0    # "handledTrackCount":I
    .local v7, "handledTrackCount":I
    if-nez v0, :cond_20

    .line 311
    move-object v0, v6

    move-object v3, v0

    .end local v3    # "firstSampleMimeType":Ljava/lang/String;
    .local v0, "firstSampleMimeType":Ljava/lang/String;
    goto :goto_28

    .line 313
    .end local v0    # "firstSampleMimeType":Ljava/lang/String;
    .restart local v3    # "firstSampleMimeType":Ljava/lang/String;
    :cond_20
    invoke-static {v3, v6}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    or-int/2addr v0, v2

    move v2, v0

    .line 315
    :goto_28
    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->rendererFormatSupports:[[[I

    aget-object v0, v0, p1

    aget-object v0, v0, p2

    aget v0, v0, v4

    .line 318
    invoke-static {v0}, Lcom/google/android/exoplayer2/RendererCapabilities$-CC;->getAdaptiveSupport(I)I

    move-result v0

    .line 316
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 305
    .end local v5    # "trackIndex":I
    .end local v6    # "sampleMimeType":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    move v0, v7

    goto :goto_6

    .line 321
    .end local v4    # "i":I
    .end local v7    # "handledTrackCount":I
    .local v0, "handledTrackCount":I
    :cond_3c
    if-eqz v2, :cond_47

    .line 322
    iget-object v4, p0, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->rendererMixedMimeTypeAdaptiveSupports:[I

    aget v4, v4, p1

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    goto :goto_48

    .line 323
    :cond_47
    move v4, v1

    .line 321
    :goto_48
    return v4
.end method

.method public getCapabilities(III)I
    .registers 5
    .param p1, "rendererIndex"    # I
    .param p2, "groupIndex"    # I
    .param p3, "trackIndex"    # I

    .line 239
    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->rendererFormatSupports:[[[I

    aget-object v0, v0, p1

    aget-object v0, v0, p2

    aget v0, v0, p3

    return v0
.end method

.method public getRendererCount()I
    .registers 2

    .line 144
    iget v0, p0, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->rendererCount:I

    return v0
.end method

.method public getRendererName(I)Ljava/lang/String;
    .registers 3
    .param p1, "rendererIndex"    # I

    .line 155
    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->rendererNames:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getRendererSupport(I)I
    .registers 12
    .param p1, "rendererIndex"    # I

    .line 186
    const/4 v0, 0x0

    .line 187
    .local v0, "bestRendererSupport":I
    iget-object v1, p0, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->rendererFormatSupports:[[[I

    aget-object v1, v1, p1

    .line 188
    .local v1, "rendererFormatSupport":[[I
    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_8
    if-ge v4, v2, :cond_2f

    aget-object v5, v1, v4

    .line 189
    .local v5, "trackGroupFormatSupport":[I
    array-length v6, v5

    const/4 v7, 0x0

    :goto_e
    if-ge v7, v6, :cond_2c

    aget v8, v5, v7

    .line 191
    .local v8, "trackFormatSupport":I
    invoke-static {v8}, Lcom/google/android/exoplayer2/RendererCapabilities$-CC;->getFormatSupport(I)I

    move-result v9

    packed-switch v9, :pswitch_data_30

    .line 203
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    throw v2

    .line 193
    :pswitch_1f
    const/4 v2, 0x3

    return v2

    .line 195
    :pswitch_21
    const/4 v9, 0x2

    .line 196
    .local v9, "trackRendererSupport":I
    goto :goto_25

    .line 200
    .end local v9    # "trackRendererSupport":I
    :pswitch_23
    const/4 v9, 0x1

    .line 201
    .restart local v9    # "trackRendererSupport":I
    nop

    .line 205
    :goto_25
    invoke-static {v0, v9}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 189
    .end local v8    # "trackFormatSupport":I
    .end local v9    # "trackRendererSupport":I
    add-int/lit8 v7, v7, 0x1

    goto :goto_e

    .line 188
    .end local v5    # "trackGroupFormatSupport":[I
    :cond_2c
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    .line 208
    :cond_2f
    return v0

    :pswitch_data_30
    .packed-switch 0x0
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_21
        :pswitch_1f
    .end packed-switch
.end method

.method public getRendererType(I)I
    .registers 3
    .param p1, "rendererIndex"    # I

    .line 166
    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->rendererTrackTypes:[I

    aget v0, v0, p1

    return v0
.end method

.method public getTrackGroups(I)Lcom/google/android/exoplayer2/source/TrackGroupArray;
    .registers 3
    .param p1, "rendererIndex"    # I

    .line 176
    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->rendererTrackGroups:[Lcom/google/android/exoplayer2/source/TrackGroupArray;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getTrackSupport(III)I
    .registers 5
    .param p1, "rendererIndex"    # I
    .param p2, "groupIndex"    # I
    .param p3, "trackIndex"    # I

    .line 251
    nop

    .line 252
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getCapabilities(III)I

    move-result v0

    .line 251
    invoke-static {v0}, Lcom/google/android/exoplayer2/RendererCapabilities$-CC;->getFormatSupport(I)I

    move-result v0

    return v0
.end method

.method public getTypeSupport(I)I
    .registers 5
    .param p1, "trackType"    # I

    .line 221
    const/4 v0, 0x0

    .line 222
    .local v0, "bestRendererSupport":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget v2, p0, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->rendererCount:I

    if-ge v1, v2, :cond_17

    .line 223
    iget-object v2, p0, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->rendererTrackTypes:[I

    aget v2, v2, v1

    if-ne v2, p1, :cond_14

    .line 224
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getRendererSupport(I)I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 222
    :cond_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 227
    .end local v1    # "i":I
    :cond_17
    return v0
.end method

.method public getUnmappedTrackGroups()Lcom/google/android/exoplayer2/source/TrackGroupArray;
    .registers 2

    .line 328
    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->unmappedTrackGroups:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    return-object v0
.end method
