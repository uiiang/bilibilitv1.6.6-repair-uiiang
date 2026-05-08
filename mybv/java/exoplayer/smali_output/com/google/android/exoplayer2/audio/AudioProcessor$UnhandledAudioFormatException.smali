.class public final Lcom/google/android/exoplayer2/audio/AudioProcessor$UnhandledAudioFormatException;
.super Ljava/lang/Exception;
.source "AudioProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/audio/AudioProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UnhandledAudioFormatException"
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;)V
    .registers 3
    .param p1, "inputAudioFormat"    # Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;

    .line 112
    const-string v0, "Unhandled input format:"

    invoke-direct {p0, v0, p1}, Lcom/google/android/exoplayer2/audio/AudioProcessor$UnhandledAudioFormatException;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;)V

    .line 113
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;)V
    .registers 5
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "audioFormat"    # Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 117
    return-void
.end method
