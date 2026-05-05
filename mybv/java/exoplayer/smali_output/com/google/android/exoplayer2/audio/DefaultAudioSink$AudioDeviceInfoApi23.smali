.class final Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioDeviceInfoApi23;
.super Ljava/lang/Object;
.source "DefaultAudioSink.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/audio/DefaultAudioSink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AudioDeviceInfoApi23"
.end annotation


# instance fields
.field public final audioDeviceInfo:Landroid/media/AudioDeviceInfo;


# direct methods
.method public constructor <init>(Landroid/media/AudioDeviceInfo;)V
    .registers 2
    .param p1, "audioDeviceInfo"    # Landroid/media/AudioDeviceInfo;

    .line 2251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2252
    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioDeviceInfoApi23;->audioDeviceInfo:Landroid/media/AudioDeviceInfo;

    .line 2253
    return-void
.end method
