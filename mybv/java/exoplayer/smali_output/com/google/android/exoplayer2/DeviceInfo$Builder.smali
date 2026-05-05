.class public final Lcom/google/android/exoplayer2/DeviceInfo$Builder;
.super Ljava/lang/Object;
.source "DeviceInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/DeviceInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private maxVolume:I

.field private minVolume:I

.field private final playbackType:I

.field private routingControllerId:Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .registers 2
    .param p1, "playbackType"    # I

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput p1, p0, Lcom/google/android/exoplayer2/DeviceInfo$Builder;->playbackType:I

    .line 77
    return-void
.end method

.method static synthetic access$100(Lcom/google/android/exoplayer2/DeviceInfo$Builder;)I
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/DeviceInfo$Builder;

    .line 62
    iget v0, p0, Lcom/google/android/exoplayer2/DeviceInfo$Builder;->playbackType:I

    return v0
.end method

.method static synthetic access$200(Lcom/google/android/exoplayer2/DeviceInfo$Builder;)I
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/DeviceInfo$Builder;

    .line 62
    iget v0, p0, Lcom/google/android/exoplayer2/DeviceInfo$Builder;->minVolume:I

    return v0
.end method

.method static synthetic access$300(Lcom/google/android/exoplayer2/DeviceInfo$Builder;)I
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/DeviceInfo$Builder;

    .line 62
    iget v0, p0, Lcom/google/android/exoplayer2/DeviceInfo$Builder;->maxVolume:I

    return v0
.end method

.method static synthetic access$400(Lcom/google/android/exoplayer2/DeviceInfo$Builder;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/DeviceInfo$Builder;

    .line 62
    iget-object v0, p0, Lcom/google/android/exoplayer2/DeviceInfo$Builder;->routingControllerId:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public build()Lcom/google/android/exoplayer2/DeviceInfo;
    .registers 3

    .line 129
    iget v0, p0, Lcom/google/android/exoplayer2/DeviceInfo$Builder;->minVolume:I

    iget v1, p0, Lcom/google/android/exoplayer2/DeviceInfo$Builder;->maxVolume:I

    if-gt v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 130
    new-instance v0, Lcom/google/android/exoplayer2/DeviceInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/exoplayer2/DeviceInfo;-><init>(Lcom/google/android/exoplayer2/DeviceInfo$Builder;Lcom/google/android/exoplayer2/DeviceInfo$1;)V

    return-object v0
.end method

.method public setMaxVolume(I)Lcom/google/android/exoplayer2/DeviceInfo$Builder;
    .registers 2
    .param p1, "maxVolume"    # I

    .line 101
    iput p1, p0, Lcom/google/android/exoplayer2/DeviceInfo$Builder;->maxVolume:I

    .line 102
    return-object p0
.end method

.method public setMinVolume(I)Lcom/google/android/exoplayer2/DeviceInfo$Builder;
    .registers 2
    .param p1, "minVolume"    # I

    .line 89
    iput p1, p0, Lcom/google/android/exoplayer2/DeviceInfo$Builder;->minVolume:I

    .line 90
    return-object p0
.end method

.method public setRoutingControllerId(Ljava/lang/String;)Lcom/google/android/exoplayer2/DeviceInfo$Builder;
    .registers 3
    .param p1, "routingControllerId"    # Ljava/lang/String;

    .line 122
    iget v0, p0, Lcom/google/android/exoplayer2/DeviceInfo$Builder;->playbackType:I

    if-nez v0, :cond_9

    if-nez p1, :cond_7

    goto :goto_9

    :cond_7
    const/4 v0, 0x0

    goto :goto_a

    :cond_9
    :goto_9
    const/4 v0, 0x1

    :goto_a
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 123
    iput-object p1, p0, Lcom/google/android/exoplayer2/DeviceInfo$Builder;->routingControllerId:Ljava/lang/String;

    .line 124
    return-object p0
.end method
