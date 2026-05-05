.class public final synthetic Lcom/google/android/exoplayer2/audio/DefaultAudioSink$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver$Listener;


# instance fields
.field public final synthetic f$0:Lcom/google/android/exoplayer2/audio/DefaultAudioSink;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/audio/DefaultAudioSink;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$$ExternalSyntheticLambda1;->f$0:Lcom/google/android/exoplayer2/audio/DefaultAudioSink;

    return-void
.end method


# virtual methods
.method public final onAudioCapabilitiesChanged(Lcom/google/android/exoplayer2/audio/AudioCapabilities;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$$ExternalSyntheticLambda1;->f$0:Lcom/google/android/exoplayer2/audio/DefaultAudioSink;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->onAudioCapabilitiesChanged(Lcom/google/android/exoplayer2/audio/AudioCapabilities;)V

    return-void
.end method
