.class Lcom/google/android/exoplayer2/text/ExoplayerCuesDecoder$1;
.super Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;
.source "ExoplayerCuesDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/exoplayer2/text/ExoplayerCuesDecoder;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/exoplayer2/text/ExoplayerCuesDecoder;


# direct methods
.method constructor <init>(Lcom/google/android/exoplayer2/text/ExoplayerCuesDecoder;)V
    .registers 2
    .param p1, "this$0"    # Lcom/google/android/exoplayer2/text/ExoplayerCuesDecoder;

    .line 72
    iput-object p1, p0, Lcom/google/android/exoplayer2/text/ExoplayerCuesDecoder$1;->this$0:Lcom/google/android/exoplayer2/text/ExoplayerCuesDecoder;

    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;-><init>()V

    return-void
.end method


# virtual methods
.method public release()V
    .registers 2

    .line 75
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/ExoplayerCuesDecoder$1;->this$0:Lcom/google/android/exoplayer2/text/ExoplayerCuesDecoder;

    # invokes: Lcom/google/android/exoplayer2/text/ExoplayerCuesDecoder;->releaseOutputBuffer(Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;)V
    invoke-static {v0, p0}, Lcom/google/android/exoplayer2/text/ExoplayerCuesDecoder;->access$000(Lcom/google/android/exoplayer2/text/ExoplayerCuesDecoder;Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;)V

    .line 76
    return-void
.end method
