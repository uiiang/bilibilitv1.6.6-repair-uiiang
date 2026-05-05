.class public final Lcom/google/android/exoplayer2/DeviceInfo;
.super Ljava/lang/Object;
.source "DeviceInfo.java"

# interfaces
.implements Lcom/google/android/exoplayer2/Bundleable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/DeviceInfo$Builder;,
        Lcom/google/android/exoplayer2/DeviceInfo$PlaybackType;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final CREATOR:Lcom/google/android/exoplayer2/Bundleable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/Bundleable$Creator<",
            "Lcom/google/android/exoplayer2/DeviceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final FIELD_MAX_VOLUME:Ljava/lang/String;

.field private static final FIELD_MIN_VOLUME:Ljava/lang/String;

.field private static final FIELD_PLAYBACK_TYPE:Ljava/lang/String;

.field private static final FIELD_ROUTING_CONTROLLER_ID:Ljava/lang/String;

.field public static final PLAYBACK_TYPE_LOCAL:I = 0x0

.field public static final PLAYBACK_TYPE_REMOTE:I = 0x1

.field public static final UNKNOWN:Lcom/google/android/exoplayer2/DeviceInfo;


# instance fields
.field public final maxVolume:I

.field public final minVolume:I

.field public final playbackType:I

.field public final routingControllerId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 59
    new-instance v0, Lcom/google/android/exoplayer2/DeviceInfo$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/DeviceInfo$Builder;-><init>(I)V

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/DeviceInfo$Builder;->build()Lcom/google/android/exoplayer2/DeviceInfo;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/DeviceInfo;->UNKNOWN:Lcom/google/android/exoplayer2/DeviceInfo;

    .line 197
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/DeviceInfo;->FIELD_PLAYBACK_TYPE:Ljava/lang/String;

    .line 198
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/DeviceInfo;->FIELD_MIN_VOLUME:Ljava/lang/String;

    .line 199
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/DeviceInfo;->FIELD_MAX_VOLUME:Ljava/lang/String;

    .line 200
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/DeviceInfo;->FIELD_ROUTING_CONTROLLER_ID:Ljava/lang/String;

    .line 221
    new-instance v0, Lcom/google/android/exoplayer2/DeviceInfo$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/DeviceInfo$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/DeviceInfo;->CREATOR:Lcom/google/android/exoplayer2/Bundleable$Creator;

    return-void
.end method

.method public constructor <init>(III)V
    .registers 5
    .param p1, "playbackType"    # I
    .param p2, "minVolume"    # I
    .param p3, "maxVolume"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 160
    new-instance v0, Lcom/google/android/exoplayer2/DeviceInfo$Builder;

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/DeviceInfo$Builder;-><init>(I)V

    invoke-virtual {v0, p2}, Lcom/google/android/exoplayer2/DeviceInfo$Builder;->setMinVolume(I)Lcom/google/android/exoplayer2/DeviceInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/google/android/exoplayer2/DeviceInfo$Builder;->setMaxVolume(I)Lcom/google/android/exoplayer2/DeviceInfo$Builder;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/DeviceInfo;-><init>(Lcom/google/android/exoplayer2/DeviceInfo$Builder;)V

    .line 161
    return-void
.end method

.method private constructor <init>(Lcom/google/android/exoplayer2/DeviceInfo$Builder;)V
    .registers 3
    .param p1, "builder"    # Lcom/google/android/exoplayer2/DeviceInfo$Builder;

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    # getter for: Lcom/google/android/exoplayer2/DeviceInfo$Builder;->playbackType:I
    invoke-static {p1}, Lcom/google/android/exoplayer2/DeviceInfo$Builder;->access$100(Lcom/google/android/exoplayer2/DeviceInfo$Builder;)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/DeviceInfo;->playbackType:I

    .line 165
    # getter for: Lcom/google/android/exoplayer2/DeviceInfo$Builder;->minVolume:I
    invoke-static {p1}, Lcom/google/android/exoplayer2/DeviceInfo$Builder;->access$200(Lcom/google/android/exoplayer2/DeviceInfo$Builder;)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/DeviceInfo;->minVolume:I

    .line 166
    # getter for: Lcom/google/android/exoplayer2/DeviceInfo$Builder;->maxVolume:I
    invoke-static {p1}, Lcom/google/android/exoplayer2/DeviceInfo$Builder;->access$300(Lcom/google/android/exoplayer2/DeviceInfo$Builder;)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/DeviceInfo;->maxVolume:I

    .line 167
    # getter for: Lcom/google/android/exoplayer2/DeviceInfo$Builder;->routingControllerId:Ljava/lang/String;
    invoke-static {p1}, Lcom/google/android/exoplayer2/DeviceInfo$Builder;->access$400(Lcom/google/android/exoplayer2/DeviceInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/DeviceInfo;->routingControllerId:Ljava/lang/String;

    .line 168
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/DeviceInfo$Builder;Lcom/google/android/exoplayer2/DeviceInfo$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/google/android/exoplayer2/DeviceInfo$Builder;
    .param p2, "x1"    # Lcom/google/android/exoplayer2/DeviceInfo$1;

    .line 42
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/DeviceInfo;-><init>(Lcom/google/android/exoplayer2/DeviceInfo$Builder;)V

    return-void
.end method

.method static synthetic lambda$static$0(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/DeviceInfo;
    .registers 6
    .param p0, "bundle"    # Landroid/os/Bundle;

    .line 223
    sget-object v0, Lcom/google/android/exoplayer2/DeviceInfo;->FIELD_PLAYBACK_TYPE:Ljava/lang/String;

    .line 224
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 225
    .local v0, "playbackType":I
    sget-object v2, Lcom/google/android/exoplayer2/DeviceInfo;->FIELD_MIN_VOLUME:Ljava/lang/String;

    invoke-virtual {p0, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 226
    .local v2, "minVolume":I
    sget-object v3, Lcom/google/android/exoplayer2/DeviceInfo;->FIELD_MAX_VOLUME:Ljava/lang/String;

    invoke-virtual {p0, v3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 227
    .local v1, "maxVolume":I
    sget-object v3, Lcom/google/android/exoplayer2/DeviceInfo;->FIELD_ROUTING_CONTROLLER_ID:Ljava/lang/String;

    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 228
    .local v3, "routingControllerId":Ljava/lang/String;
    new-instance v4, Lcom/google/android/exoplayer2/DeviceInfo$Builder;

    invoke-direct {v4, v0}, Lcom/google/android/exoplayer2/DeviceInfo$Builder;-><init>(I)V

    .line 229
    invoke-virtual {v4, v2}, Lcom/google/android/exoplayer2/DeviceInfo$Builder;->setMinVolume(I)Lcom/google/android/exoplayer2/DeviceInfo$Builder;

    move-result-object v4

    .line 230
    invoke-virtual {v4, v1}, Lcom/google/android/exoplayer2/DeviceInfo$Builder;->setMaxVolume(I)Lcom/google/android/exoplayer2/DeviceInfo$Builder;

    move-result-object v4

    .line 231
    invoke-virtual {v4, v3}, Lcom/google/android/exoplayer2/DeviceInfo$Builder;->setRoutingControllerId(Ljava/lang/String;)Lcom/google/android/exoplayer2/DeviceInfo$Builder;

    move-result-object v4

    .line 232
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/DeviceInfo$Builder;->build()Lcom/google/android/exoplayer2/DeviceInfo;

    move-result-object v4

    .line 228
    return-object v4
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 172
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 173
    return v0

    .line 175
    :cond_4
    instance-of v1, p1, Lcom/google/android/exoplayer2/DeviceInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 176
    return v2

    .line 178
    :cond_a
    move-object v1, p1

    check-cast v1, Lcom/google/android/exoplayer2/DeviceInfo;

    .line 179
    .local v1, "other":Lcom/google/android/exoplayer2/DeviceInfo;
    iget v3, p0, Lcom/google/android/exoplayer2/DeviceInfo;->playbackType:I

    iget v4, v1, Lcom/google/android/exoplayer2/DeviceInfo;->playbackType:I

    if-ne v3, v4, :cond_2a

    iget v3, p0, Lcom/google/android/exoplayer2/DeviceInfo;->minVolume:I

    iget v4, v1, Lcom/google/android/exoplayer2/DeviceInfo;->minVolume:I

    if-ne v3, v4, :cond_2a

    iget v3, p0, Lcom/google/android/exoplayer2/DeviceInfo;->maxVolume:I

    iget v4, v1, Lcom/google/android/exoplayer2/DeviceInfo;->maxVolume:I

    if-ne v3, v4, :cond_2a

    iget-object v3, p0, Lcom/google/android/exoplayer2/DeviceInfo;->routingControllerId:Ljava/lang/String;

    iget-object v4, v1, Lcom/google/android/exoplayer2/DeviceInfo;->routingControllerId:Ljava/lang/String;

    .line 182
    invoke-static {v3, v4}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    goto :goto_2b

    :cond_2a
    const/4 v0, 0x0

    .line 179
    :goto_2b
    return v0
.end method

.method public hashCode()I
    .registers 4

    .line 187
    const/16 v0, 0x11

    .line 188
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/android/exoplayer2/DeviceInfo;->playbackType:I

    add-int/2addr v1, v2

    .line 189
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Lcom/google/android/exoplayer2/DeviceInfo;->minVolume:I

    add-int/2addr v0, v2

    .line 190
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/android/exoplayer2/DeviceInfo;->maxVolume:I

    add-int/2addr v1, v2

    .line 191
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/google/android/exoplayer2/DeviceInfo;->routingControllerId:Ljava/lang/String;

    if-nez v2, :cond_19

    const/4 v2, 0x0

    goto :goto_1d

    :cond_19
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1d
    add-int/2addr v0, v2

    .line 192
    .end local v1    # "result":I
    .restart local v0    # "result":I
    return v0
.end method

.method public toBundle()Landroid/os/Bundle;
    .registers 4

    .line 204
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 205
    .local v0, "bundle":Landroid/os/Bundle;
    iget v1, p0, Lcom/google/android/exoplayer2/DeviceInfo;->playbackType:I

    if-eqz v1, :cond_e

    .line 206
    sget-object v2, Lcom/google/android/exoplayer2/DeviceInfo;->FIELD_PLAYBACK_TYPE:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 208
    :cond_e
    iget v1, p0, Lcom/google/android/exoplayer2/DeviceInfo;->minVolume:I

    if-eqz v1, :cond_17

    .line 209
    sget-object v2, Lcom/google/android/exoplayer2/DeviceInfo;->FIELD_MIN_VOLUME:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 211
    :cond_17
    iget v1, p0, Lcom/google/android/exoplayer2/DeviceInfo;->maxVolume:I

    if-eqz v1, :cond_20

    .line 212
    sget-object v2, Lcom/google/android/exoplayer2/DeviceInfo;->FIELD_MAX_VOLUME:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 214
    :cond_20
    iget-object v1, p0, Lcom/google/android/exoplayer2/DeviceInfo;->routingControllerId:Ljava/lang/String;

    if-eqz v1, :cond_29

    .line 215
    sget-object v2, Lcom/google/android/exoplayer2/DeviceInfo;->FIELD_ROUTING_CONTROLLER_ID:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    :cond_29
    return-object v0
.end method
