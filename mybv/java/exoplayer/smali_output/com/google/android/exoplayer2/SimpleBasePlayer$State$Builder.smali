.class public final Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;
.super Ljava/lang/Object;
.source "SimpleBasePlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/SimpleBasePlayer$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private adBufferedPositionMsSupplier:Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;

.field private adPositionMs:Ljava/lang/Long;

.field private adPositionMsSupplier:Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;

.field private audioAttributes:Lcom/google/android/exoplayer2/audio/AudioAttributes;

.field private availableCommands:Lcom/google/android/exoplayer2/Player$Commands;

.field private contentBufferedPositionMsSupplier:Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;

.field private contentPositionMs:Ljava/lang/Long;

.field private contentPositionMsSupplier:Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;

.field private currentAdGroupIndex:I

.field private currentAdIndexInAdGroup:I

.field private currentCues:Lcom/google/android/exoplayer2/text/CueGroup;

.field private currentMediaItemIndex:I

.field private deviceInfo:Lcom/google/android/exoplayer2/DeviceInfo;

.field private deviceVolume:I

.field private discontinuityPositionMs:J

.field private hasPositionDiscontinuity:Z

.field private isDeviceMuted:Z

.field private isLoading:Z

.field private maxSeekToPreviousPositionMs:J

.field private newlyRenderedFirstFrame:Z

.field private playWhenReady:Z

.field private playWhenReadyChangeReason:I

.field private playbackParameters:Lcom/google/android/exoplayer2/PlaybackParameters;

.field private playbackState:I

.field private playbackSuppressionReason:I

.field private playerError:Lcom/google/android/exoplayer2/PlaybackException;

.field private playlist:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;",
            ">;"
        }
    .end annotation
.end field

.field private playlistMetadata:Lcom/google/android/exoplayer2/MediaMetadata;

.field private positionDiscontinuityReason:I

.field private repeatMode:I

.field private seekBackIncrementMs:J

.field private seekForwardIncrementMs:J

.field private shuffleModeEnabled:Z

.field private surfaceSize:Lcom/google/android/exoplayer2/util/Size;

.field private timedMetadata:Lcom/google/android/exoplayer2/metadata/Metadata;

.field private timeline:Lcom/google/android/exoplayer2/Timeline;

.field private totalBufferedDurationMsSupplier:Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;

.field private trackSelectionParameters:Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;

.field private videoSize:Lcom/google/android/exoplayer2/video/VideoSize;

.field private volume:F


# direct methods
.method public constructor <init>()V
    .registers 7

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    sget-object v0, Lcom/google/android/exoplayer2/Player$Commands;->EMPTY:Lcom/google/android/exoplayer2/Player$Commands;

    iput-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->availableCommands:Lcom/google/android/exoplayer2/Player$Commands;

    .line 158
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->playWhenReady:Z

    .line 159
    const/4 v1, 0x1

    iput v1, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->playWhenReadyChangeReason:I

    .line 160
    iput v1, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->playbackState:I

    .line 161
    iput v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->playbackSuppressionReason:I

    .line 162
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->playerError:Lcom/google/android/exoplayer2/PlaybackException;

    .line 163
    iput v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->repeatMode:I

    .line 164
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->shuffleModeEnabled:Z

    .line 165
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->isLoading:Z

    .line 166
    const-wide/16 v2, 0x1388

    iput-wide v2, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->seekBackIncrementMs:J

    .line 167
    const-wide/16 v2, 0x3a98

    iput-wide v2, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->seekForwardIncrementMs:J

    .line 168
    const-wide/16 v2, 0xbb8

    iput-wide v2, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->maxSeekToPreviousPositionMs:J

    .line 169
    sget-object v2, Lcom/google/android/exoplayer2/PlaybackParameters;->DEFAULT:Lcom/google/android/exoplayer2/PlaybackParameters;

    iput-object v2, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->playbackParameters:Lcom/google/android/exoplayer2/PlaybackParameters;

    .line 170
    sget-object v2, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->DEFAULT_WITHOUT_CONTEXT:Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;

    iput-object v2, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->trackSelectionParameters:Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;

    .line 171
    sget-object v2, Lcom/google/android/exoplayer2/audio/AudioAttributes;->DEFAULT:Lcom/google/android/exoplayer2/audio/AudioAttributes;

    iput-object v2, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->audioAttributes:Lcom/google/android/exoplayer2/audio/AudioAttributes;

    .line 172
    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->volume:F

    .line 173
    sget-object v2, Lcom/google/android/exoplayer2/video/VideoSize;->UNKNOWN:Lcom/google/android/exoplayer2/video/VideoSize;

    iput-object v2, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->videoSize:Lcom/google/android/exoplayer2/video/VideoSize;

    .line 174
    sget-object v2, Lcom/google/android/exoplayer2/text/CueGroup;->EMPTY_TIME_ZERO:Lcom/google/android/exoplayer2/text/CueGroup;

    iput-object v2, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->currentCues:Lcom/google/android/exoplayer2/text/CueGroup;

    .line 175
    sget-object v2, Lcom/google/android/exoplayer2/DeviceInfo;->UNKNOWN:Lcom/google/android/exoplayer2/DeviceInfo;

    iput-object v2, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->deviceInfo:Lcom/google/android/exoplayer2/DeviceInfo;

    .line 176
    iput v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->deviceVolume:I

    .line 177
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->isDeviceMuted:Z

    .line 178
    sget-object v2, Lcom/google/android/exoplayer2/util/Size;->UNKNOWN:Lcom/google/android/exoplayer2/util/Size;

    iput-object v2, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->surfaceSize:Lcom/google/android/exoplayer2/util/Size;

    .line 179
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->newlyRenderedFirstFrame:Z

    .line 180
    new-instance v2, Lcom/google/android/exoplayer2/metadata/Metadata;

    new-array v3, v0, [Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {v2, v4, v5, v3}, Lcom/google/android/exoplayer2/metadata/Metadata;-><init>(J[Lcom/google/android/exoplayer2/metadata/Metadata$Entry;)V

    iput-object v2, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->timedMetadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 181
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->playlist:Lcom/google/common/collect/ImmutableList;

    .line 182
    sget-object v2, Lcom/google/android/exoplayer2/Timeline;->EMPTY:Lcom/google/android/exoplayer2/Timeline;

    iput-object v2, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->timeline:Lcom/google/android/exoplayer2/Timeline;

    .line 183
    sget-object v2, Lcom/google/android/exoplayer2/MediaMetadata;->EMPTY:Lcom/google/android/exoplayer2/MediaMetadata;

    iput-object v2, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->playlistMetadata:Lcom/google/android/exoplayer2/MediaMetadata;

    .line 184
    const/4 v2, -0x1

    iput v2, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->currentMediaItemIndex:I

    .line 185
    iput v2, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->currentAdGroupIndex:I

    .line 186
    iput v2, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->currentAdIndexInAdGroup:I

    .line 187
    iput-object v1, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->contentPositionMs:Ljava/lang/Long;

    .line 188
    invoke-static {v4, v5}, Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier$-CC;->getConstant(J)Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->contentPositionMsSupplier:Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;

    .line 189
    iput-object v1, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->adPositionMs:Ljava/lang/Long;

    .line 190
    sget-object v1, Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;->ZERO:Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;

    iput-object v1, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->adPositionMsSupplier:Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;

    .line 191
    invoke-static {v4, v5}, Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier$-CC;->getConstant(J)Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->contentBufferedPositionMsSupplier:Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;

    .line 192
    sget-object v1, Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;->ZERO:Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;

    iput-object v1, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->adBufferedPositionMsSupplier:Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;

    .line 193
    sget-object v1, Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;->ZERO:Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;

    iput-object v1, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->totalBufferedDurationMsSupplier:Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;

    .line 194
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->hasPositionDiscontinuity:Z

    .line 195
    const/4 v0, 0x5

    iput v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->positionDiscontinuityReason:I

    .line 196
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->discontinuityPositionMs:J

    .line 197
    return-void
.end method

.method private constructor <init>(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;)V
    .registers 4
    .param p1, "state"    # Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 200
    iget-object v0, p1, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->availableCommands:Lcom/google/android/exoplayer2/Player$Commands;

    iput-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->availableCommands:Lcom/google/android/exoplayer2/Player$Commands;

    .line 201
    iget-boolean v0, p1, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->playWhenReady:Z

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->playWhenReady:Z

    .line 202
    iget v0, p1, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->playWhenReadyChangeReason:I

    iput v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->playWhenReadyChangeReason:I

    .line 203
    iget v0, p1, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->playbackState:I

    iput v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->playbackState:I

    .line 204
    iget v0, p1, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->playbackSuppressionReason:I

    iput v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->playbackSuppressionReason:I

    .line 205
    iget-object v0, p1, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->playerError:Lcom/google/android/exoplayer2/PlaybackException;

    iput-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->playerError:Lcom/google/android/exoplayer2/PlaybackException;

    .line 206
    iget v0, p1, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->repeatMode:I

    iput v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->repeatMode:I

    .line 207
    iget-boolean v0, p1, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->shuffleModeEnabled:Z

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->shuffleModeEnabled:Z

    .line 208
    iget-boolean v0, p1, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->isLoading:Z

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->isLoading:Z

    .line 209
    iget-wide v0, p1, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->seekBackIncrementMs:J

    iput-wide v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->seekBackIncrementMs:J

    .line 210
    iget-wide v0, p1, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->seekForwardIncrementMs:J

    iput-wide v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->seekForwardIncrementMs:J

    .line 211
    iget-wide v0, p1, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->maxSeekToPreviousPositionMs:J

    iput-wide v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->maxSeekToPreviousPositionMs:J

    .line 212
    iget-object v0, p1, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->playbackParameters:Lcom/google/android/exoplayer2/PlaybackParameters;

    iput-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->playbackParameters:Lcom/google/android/exoplayer2/PlaybackParameters;

    .line 213
    iget-object v0, p1, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->trackSelectionParameters:Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;

    iput-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->trackSelectionParameters:Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;

    .line 214
    iget-object v0, p1, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->audioAttributes:Lcom/google/android/exoplayer2/audio/AudioAttributes;

    iput-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->audioAttributes:Lcom/google/android/exoplayer2/audio/AudioAttributes;

    .line 215
    iget v0, p1, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->volume:F

    iput v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->volume:F

    .line 216
    iget-object v0, p1, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->videoSize:Lcom/google/android/exoplayer2/video/VideoSize;

    iput-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->videoSize:Lcom/google/android/exoplayer2/video/VideoSize;

    .line 217
    iget-object v0, p1, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->currentCues:Lcom/google/android/exoplayer2/text/CueGroup;

    iput-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->currentCues:Lcom/google/android/exoplayer2/text/CueGroup;

    .line 218
    iget-object v0, p1, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->deviceInfo:Lcom/google/android/exoplayer2/DeviceInfo;

    iput-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->deviceInfo:Lcom/google/android/exoplayer2/DeviceInfo;

    .line 219
    iget v0, p1, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->deviceVolume:I

    iput v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->deviceVolume:I

    .line 220
    iget-boolean v0, p1, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->isDeviceMuted:Z

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->isDeviceMuted:Z

    .line 221
    iget-object v0, p1, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->surfaceSize:Lcom/google/android/exoplayer2/util/Size;

    iput-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->surfaceSize:Lcom/google/android/exoplayer2/util/Size;

    .line 222
    iget-boolean v0, p1, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->newlyRenderedFirstFrame:Z

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->newlyRenderedFirstFrame:Z

    .line 223
    iget-object v0, p1, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->timedMetadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    iput-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->timedMetadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 224
    iget-object v0, p1, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->playlist:Lcom/google/common/collect/ImmutableList;

    iput-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->playlist:Lcom/google/common/collect/ImmutableList;

    .line 225
    iget-object v0, p1, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iput-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->timeline:Lcom/google/android/exoplayer2/Timeline;

    .line 226
    iget-object v0, p1, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->playlistMetadata:Lcom/google/android/exoplayer2/MediaMetadata;

    iput-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->playlistMetadata:Lcom/google/android/exoplayer2/MediaMetadata;

    .line 227
    iget v0, p1, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->currentMediaItemIndex:I

    iput v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->currentMediaItemIndex:I

    .line 228
    iget v0, p1, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->currentAdGroupIndex:I

    iput v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->currentAdGroupIndex:I

    .line 229
    iget v0, p1, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->currentAdIndexInAdGroup:I

    iput v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->currentAdIndexInAdGroup:I

    .line 230
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->contentPositionMs:Ljava/lang/Long;

    .line 231
    iget-object v1, p1, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->contentPositionMsSupplier:Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;

    iput-object v1, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->contentPositionMsSupplier:Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;

    .line 232
    iput-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->adPositionMs:Ljava/lang/Long;

    .line 233
    iget-object v0, p1, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->adPositionMsSupplier:Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;

    iput-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->adPositionMsSupplier:Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;

    .line 234
    iget-object v0, p1, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->contentBufferedPositionMsSupplier:Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;

    iput-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->contentBufferedPositionMsSupplier:Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;

    .line 235
    iget-object v0, p1, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->adBufferedPositionMsSupplier:Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;

    iput-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->adBufferedPositionMsSupplier:Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;

    .line 236
    iget-object v0, p1, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->totalBufferedDurationMsSupplier:Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;

    iput-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->totalBufferedDurationMsSupplier:Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;

    .line 237
    iget-boolean v0, p1, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->hasPositionDiscontinuity:Z

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->hasPositionDiscontinuity:Z

    .line 238
    iget v0, p1, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->positionDiscontinuityReason:I

    iput v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->positionDiscontinuityReason:I

    .line 239
    iget-wide v0, p1, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->discontinuityPositionMs:J

    iput-wide v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->discontinuityPositionMs:J

    .line 240
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;Lcom/google/android/exoplayer2/SimpleBasePlayer$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/google/android/exoplayer2/SimpleBasePlayer$State;
    .param p2, "x1"    # Lcom/google/android/exoplayer2/SimpleBasePlayer$1;

    .line 112
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;-><init>(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;)Lcom/google/android/exoplayer2/Timeline;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;

    .line 112
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->timeline:Lcom/google/android/exoplayer2/Timeline;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;)Z
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;

    .line 112
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->isLoading:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;)Z
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;

    .line 112
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->playWhenReady:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;)I
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;

    .line 112
    iget v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->playbackSuppressionReason:I

    return v0
.end method

.method static synthetic access$1300(Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;)Lcom/google/android/exoplayer2/PlaybackParameters;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;

    .line 112
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->playbackParameters:Lcom/google/android/exoplayer2/PlaybackParameters;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;)Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;

    .line 112
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->adPositionMsSupplier:Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;)Ljava/lang/Long;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;

    .line 112
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->adPositionMs:Ljava/lang/Long;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;)Lcom/google/android/exoplayer2/Player$Commands;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;

    .line 112
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->availableCommands:Lcom/google/android/exoplayer2/Player$Commands;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;)I
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;

    .line 112
    iget v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->playWhenReadyChangeReason:I

    return v0
.end method

.method static synthetic access$1800(Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;)I
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;

    .line 112
    iget v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->repeatMode:I

    return v0
.end method

.method static synthetic access$1900(Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;)Z
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;

    .line 112
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->shuffleModeEnabled:Z

    return v0
.end method

.method static synthetic access$200(Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;)I
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;

    .line 112
    iget v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->playbackState:I

    return v0
.end method

.method static synthetic access$2000(Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;)J
    .registers 3
    .param p0, "x0"    # Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;

    .line 112
    iget-wide v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->seekBackIncrementMs:J

    return-wide v0
.end method

.method static synthetic access$2100(Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;)J
    .registers 3
    .param p0, "x0"    # Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;

    .line 112
    iget-wide v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->seekForwardIncrementMs:J

    return-wide v0
.end method

.method static synthetic access$2200(Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;)J
    .registers 3
    .param p0, "x0"    # Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;

    .line 112
    iget-wide v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->maxSeekToPreviousPositionMs:J

    return-wide v0
.end method

.method static synthetic access$2300(Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;)Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;

    .line 112
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->trackSelectionParameters:Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;)Lcom/google/android/exoplayer2/audio/AudioAttributes;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;

    .line 112
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->audioAttributes:Lcom/google/android/exoplayer2/audio/AudioAttributes;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;)F
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;

    .line 112
    iget v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->volume:F

    return v0
.end method

.method static synthetic access$2600(Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;)Lcom/google/android/exoplayer2/video/VideoSize;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;

    .line 112
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->videoSize:Lcom/google/android/exoplayer2/video/VideoSize;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;)Lcom/google/android/exoplayer2/text/CueGroup;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;

    .line 112
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->currentCues:Lcom/google/android/exoplayer2/text/CueGroup;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;)Lcom/google/android/exoplayer2/DeviceInfo;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;

    .line 112
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->deviceInfo:Lcom/google/android/exoplayer2/DeviceInfo;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;)I
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;

    .line 112
    iget v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->deviceVolume:I

    return v0
.end method

.method static synthetic access$300(Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;)I
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;

    .line 112
    iget v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->currentAdGroupIndex:I

    return v0
.end method

.method static synthetic access$3000(Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;)Z
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;

    .line 112
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->isDeviceMuted:Z

    return v0
.end method

.method static synthetic access$3100(Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;)Lcom/google/android/exoplayer2/util/Size;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;

    .line 112
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->surfaceSize:Lcom/google/android/exoplayer2/util/Size;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;)Z
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;

    .line 112
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->newlyRenderedFirstFrame:Z

    return v0
.end method

.method static synthetic access$3300(Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;)Lcom/google/android/exoplayer2/metadata/Metadata;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;

    .line 112
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->timedMetadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;)Lcom/google/common/collect/ImmutableList;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;

    .line 112
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->playlist:Lcom/google/common/collect/ImmutableList;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;)Lcom/google/android/exoplayer2/MediaMetadata;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;

    .line 112
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->playlistMetadata:Lcom/google/android/exoplayer2/MediaMetadata;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;)Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;

    .line 112
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->contentBufferedPositionMsSupplier:Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;)Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;

    .line 112
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->adBufferedPositionMsSupplier:Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;)Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;

    .line 112
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->totalBufferedDurationMsSupplier:Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;)Z
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;

    .line 112
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->hasPositionDiscontinuity:Z

    return v0
.end method

.method static synthetic access$400(Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;)I
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;

    .line 112
    iget v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->currentAdIndexInAdGroup:I

    return v0
.end method

.method static synthetic access$4000(Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;)I
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;

    .line 112
    iget v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->positionDiscontinuityReason:I

    return v0
.end method

.method static synthetic access$4100(Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;)J
    .registers 3
    .param p0, "x0"    # Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;

    .line 112
    iget-wide v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->discontinuityPositionMs:J

    return-wide v0
.end method

.method static synthetic access$500(Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;)I
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;

    .line 112
    iget v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->currentMediaItemIndex:I

    return v0
.end method

.method static synthetic access$600(Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;)Ljava/lang/Long;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;

    .line 112
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->contentPositionMs:Ljava/lang/Long;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;)Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;

    .line 112
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->contentPositionMsSupplier:Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;)Lcom/google/android/exoplayer2/PlaybackException;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;

    .line 112
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->playerError:Lcom/google/android/exoplayer2/PlaybackException;

    return-object v0
.end method


# virtual methods
.method public build()Lcom/google/android/exoplayer2/SimpleBasePlayer$State;
    .registers 3

    .line 778
    new-instance v0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;-><init>(Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;Lcom/google/android/exoplayer2/SimpleBasePlayer$1;)V

    return-object v0
.end method

.method public clearPositionDiscontinuity()Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;
    .registers 2

    .line 772
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->hasPositionDiscontinuity:Z

    .line 773
    return-object p0
.end method

.method public setAdBufferedPositionMs(Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;)Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;
    .registers 2
    .param p1, "adBufferedPositionMsSupplier"    # Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;

    .line 725
    iput-object p1, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->adBufferedPositionMsSupplier:Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;

    .line 726
    return-object p0
.end method

.method public setAdPositionMs(J)Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;
    .registers 4
    .param p1, "positionMs"    # J

    .line 674
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->adPositionMs:Ljava/lang/Long;

    .line 675
    return-object p0
.end method

.method public setAdPositionMs(Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;)Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;
    .registers 3
    .param p1, "adPositionMsSupplier"    # Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;

    .line 693
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->adPositionMs:Ljava/lang/Long;

    .line 694
    iput-object p1, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->adPositionMsSupplier:Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;

    .line 695
    return-object p0
.end method

.method public setAudioAttributes(Lcom/google/android/exoplayer2/audio/AudioAttributes;)Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;
    .registers 2
    .param p1, "audioAttributes"    # Lcom/google/android/exoplayer2/audio/AudioAttributes;

    .line 425
    iput-object p1, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->audioAttributes:Lcom/google/android/exoplayer2/audio/AudioAttributes;

    .line 426
    return-object p0
.end method

.method public setAvailableCommands(Lcom/google/android/exoplayer2/Player$Commands;)Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;
    .registers 2
    .param p1, "availableCommands"    # Lcom/google/android/exoplayer2/Player$Commands;

    .line 250
    iput-object p1, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->availableCommands:Lcom/google/android/exoplayer2/Player$Commands;

    .line 251
    return-object p0
.end method

.method public setContentBufferedPositionMs(Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;)Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;
    .registers 2
    .param p1, "contentBufferedPositionMsSupplier"    # Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;

    .line 710
    iput-object p1, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->contentBufferedPositionMsSupplier:Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;

    .line 711
    return-object p0
.end method

.method public setContentPositionMs(J)Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;
    .registers 4
    .param p1, "positionMs"    # J

    .line 634
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->contentPositionMs:Ljava/lang/Long;

    .line 635
    return-object p0
.end method

.method public setContentPositionMs(Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;)Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;
    .registers 3
    .param p1, "contentPositionMsSupplier"    # Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;

    .line 654
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->contentPositionMs:Ljava/lang/Long;

    .line 655
    iput-object p1, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->contentPositionMsSupplier:Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;

    .line 656
    return-object p0
.end method

.method public setCurrentAd(II)Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;
    .registers 7
    .param p1, "adGroupIndex"    # I
    .param p2, "adIndexInAdGroup"    # I

    .line 613
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne p1, v2, :cond_7

    const/4 v3, 0x1

    goto :goto_8

    :cond_7
    const/4 v3, 0x0

    :goto_8
    if-ne p2, v2, :cond_c

    const/4 v2, 0x1

    goto :goto_d

    :cond_c
    const/4 v2, 0x0

    :goto_d
    if-ne v3, v2, :cond_10

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 614
    iput p1, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->currentAdGroupIndex:I

    .line 615
    iput p2, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->currentAdIndexInAdGroup:I

    .line 616
    return-object p0
.end method

.method public setCurrentCues(Lcom/google/android/exoplayer2/text/CueGroup;)Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;
    .registers 2
    .param p1, "currentCues"    # Lcom/google/android/exoplayer2/text/CueGroup;

    .line 464
    iput-object p1, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->currentCues:Lcom/google/android/exoplayer2/text/CueGroup;

    .line 465
    return-object p0
.end method

.method public setCurrentMediaItemIndex(I)Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;
    .registers 2
    .param p1, "currentMediaItemIndex"    # I

    .line 592
    iput p1, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->currentMediaItemIndex:I

    .line 593
    return-object p0
.end method

.method public setDeviceInfo(Lcom/google/android/exoplayer2/DeviceInfo;)Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;
    .registers 2
    .param p1, "deviceInfo"    # Lcom/google/android/exoplayer2/DeviceInfo;

    .line 476
    iput-object p1, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->deviceInfo:Lcom/google/android/exoplayer2/DeviceInfo;

    .line 477
    return-object p0
.end method

.method public setDeviceVolume(I)Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;
    .registers 3
    .param p1, "deviceVolume"    # I

    .line 488
    if-ltz p1, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 489
    iput p1, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->deviceVolume:I

    .line 490
    return-object p0
.end method

.method public setIsDeviceMuted(Z)Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;
    .registers 2
    .param p1, "isDeviceMuted"    # Z

    .line 501
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->isDeviceMuted:Z

    .line 502
    return-object p0
.end method

.method public setIsLoading(Z)Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;
    .registers 2
    .param p1, "isLoading"    # Z

    .line 350
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->isLoading:Z

    .line 351
    return-object p0
.end method

.method public setMaxSeekToPreviousPositionMs(J)Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;
    .registers 3
    .param p1, "maxSeekToPreviousPositionMs"    # J

    .line 388
    iput-wide p1, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->maxSeekToPreviousPositionMs:J

    .line 389
    return-object p0
.end method

.method public setNewlyRenderedFirstFrame(Z)Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;
    .registers 2
    .param p1, "newlyRenderedFirstFrame"    # Z

    .line 530
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->newlyRenderedFirstFrame:Z

    .line 531
    return-object p0
.end method

.method public setPlayWhenReady(ZI)Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;
    .registers 3
    .param p1, "playWhenReady"    # Z
    .param p2, "playWhenReadyChangeReason"    # I

    .line 265
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->playWhenReady:Z

    .line 266
    iput p2, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->playWhenReadyChangeReason:I

    .line 267
    return-object p0
.end method

.method public setPlaybackParameters(Lcom/google/android/exoplayer2/PlaybackParameters;)Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;
    .registers 2
    .param p1, "playbackParameters"    # Lcom/google/android/exoplayer2/PlaybackParameters;

    .line 400
    iput-object p1, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->playbackParameters:Lcom/google/android/exoplayer2/PlaybackParameters;

    .line 401
    return-object p0
.end method

.method public setPlaybackState(I)Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;
    .registers 2
    .param p1, "playbackState"    # I

    .line 281
    iput p1, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->playbackState:I

    .line 282
    return-object p0
.end method

.method public setPlaybackSuppressionReason(I)Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;
    .registers 2
    .param p1, "playbackSuppressionReason"    # I

    .line 295
    iput p1, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->playbackSuppressionReason:I

    .line 296
    return-object p0
.end method

.method public setPlayerError(Lcom/google/android/exoplayer2/PlaybackException;)Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;
    .registers 2
    .param p1, "playerError"    # Lcom/google/android/exoplayer2/PlaybackException;

    .line 311
    iput-object p1, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->playerError:Lcom/google/android/exoplayer2/PlaybackException;

    .line 312
    return-object p0
.end method

.method public setPlaylist(Ljava/util/List;)Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;",
            ">;)",
            "Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;"
        }
    .end annotation

    .line 559
    .local p1, "playlist":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 560
    .local v0, "uids":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Object;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_20

    .line 561
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;

    iget-object v2, v2, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->uid:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "Duplicate MediaItemData UID in playlist"

    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 560
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 563
    .end local v1    # "i":I
    :cond_20
    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->playlist:Lcom/google/common/collect/ImmutableList;

    .line 564
    new-instance v1, Lcom/google/android/exoplayer2/SimpleBasePlayer$PlaylistTimeline;

    iget-object v2, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->playlist:Lcom/google/common/collect/ImmutableList;

    invoke-direct {v1, v2}, Lcom/google/android/exoplayer2/SimpleBasePlayer$PlaylistTimeline;-><init>(Lcom/google/common/collect/ImmutableList;)V

    iput-object v1, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->timeline:Lcom/google/android/exoplayer2/Timeline;

    .line 565
    return-object p0
.end method

.method public setPlaylistMetadata(Lcom/google/android/exoplayer2/MediaMetadata;)Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;
    .registers 2
    .param p1, "playlistMetadata"    # Lcom/google/android/exoplayer2/MediaMetadata;

    .line 576
    iput-object p1, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->playlistMetadata:Lcom/google/android/exoplayer2/MediaMetadata;

    .line 577
    return-object p0
.end method

.method public setPositionDiscontinuity(IJ)Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;
    .registers 5
    .param p1, "positionDiscontinuityReason"    # I
    .param p2, "discontinuityPositionMs"    # J

    .line 758
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->hasPositionDiscontinuity:Z

    .line 759
    iput p1, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->positionDiscontinuityReason:I

    .line 760
    iput-wide p2, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->discontinuityPositionMs:J

    .line 761
    return-object p0
.end method

.method public setRepeatMode(I)Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;
    .registers 2
    .param p1, "repeatMode"    # I

    .line 323
    iput p1, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->repeatMode:I

    .line 324
    return-object p0
.end method

.method public setSeekBackIncrementMs(J)Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;
    .registers 3
    .param p1, "seekBackIncrementMs"    # J

    .line 362
    iput-wide p1, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->seekBackIncrementMs:J

    .line 363
    return-object p0
.end method

.method public setSeekForwardIncrementMs(J)Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;
    .registers 3
    .param p1, "seekForwardIncrementMs"    # J

    .line 374
    iput-wide p1, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->seekForwardIncrementMs:J

    .line 375
    return-object p0
.end method

.method public setShuffleModeEnabled(Z)Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;
    .registers 2
    .param p1, "shuffleModeEnabled"    # Z

    .line 335
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->shuffleModeEnabled:Z

    .line 336
    return-object p0
.end method

.method public setSurfaceSize(Lcom/google/android/exoplayer2/util/Size;)Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;
    .registers 2
    .param p1, "surfaceSize"    # Lcom/google/android/exoplayer2/util/Size;

    .line 514
    iput-object p1, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->surfaceSize:Lcom/google/android/exoplayer2/util/Size;

    .line 515
    return-object p0
.end method

.method public setTimedMetadata(Lcom/google/android/exoplayer2/metadata/Metadata;)Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;
    .registers 2
    .param p1, "timedMetadata"    # Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 545
    iput-object p1, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->timedMetadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 546
    return-object p0
.end method

.method public setTotalBufferedDurationMs(Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;)Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;
    .registers 2
    .param p1, "totalBufferedDurationMsSupplier"    # Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;

    .line 739
    iput-object p1, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->totalBufferedDurationMsSupplier:Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;

    .line 740
    return-object p0
.end method

.method public setTrackSelectionParameters(Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;)Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;
    .registers 2
    .param p1, "trackSelectionParameters"    # Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;

    .line 413
    iput-object p1, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->trackSelectionParameters:Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;

    .line 414
    return-object p0
.end method

.method public setVideoSize(Lcom/google/android/exoplayer2/video/VideoSize;)Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;
    .registers 2
    .param p1, "videoSize"    # Lcom/google/android/exoplayer2/video/VideoSize;

    .line 452
    iput-object p1, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->videoSize:Lcom/google/android/exoplayer2/video/VideoSize;

    .line 453
    return-object p0
.end method

.method public setVolume(F)Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;
    .registers 3
    .param p1, "volume"    # F

    .line 439
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_d

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 440
    iput p1, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->volume:F

    .line 441
    return-object p0
.end method
