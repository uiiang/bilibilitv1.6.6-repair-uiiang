.class Lcom/google/android/exoplayer2/text/SimpleSubtitleDecoder$1;
.super Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;
.source "SimpleSubtitleDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/exoplayer2/text/SimpleSubtitleDecoder;->createOutputBuffer()Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/exoplayer2/text/SimpleSubtitleDecoder;


# direct methods
.method constructor <init>(Lcom/google/android/exoplayer2/text/SimpleSubtitleDecoder;)V
    .registers 2
    .param p1, "this$0"    # Lcom/google/android/exoplayer2/text/SimpleSubtitleDecoder;

    .line 66
    iput-object p1, p0, Lcom/google/android/exoplayer2/text/SimpleSubtitleDecoder$1;->this$0:Lcom/google/android/exoplayer2/text/SimpleSubtitleDecoder;

    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;-><init>()V

    return-void
.end method


# virtual methods
.method public release()V
    .registers 2

    .line 69
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/SimpleSubtitleDecoder$1;->this$0:Lcom/google/android/exoplayer2/text/SimpleSubtitleDecoder;

    # invokes: Lcom/google/android/exoplayer2/text/SimpleSubtitleDecoder;->releaseOutputBuffer(Lcom/google/android/exoplayer2/decoder/DecoderOutputBuffer;)V
    invoke-static {v0, p0}, Lcom/google/android/exoplayer2/text/SimpleSubtitleDecoder;->access$000(Lcom/google/android/exoplayer2/text/SimpleSubtitleDecoder;Lcom/google/android/exoplayer2/decoder/DecoderOutputBuffer;)V

    .line 70
    return-void
.end method
