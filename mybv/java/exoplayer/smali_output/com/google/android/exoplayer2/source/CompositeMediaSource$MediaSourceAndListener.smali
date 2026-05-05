.class final Lcom/google/android/exoplayer2/source/CompositeMediaSource$MediaSourceAndListener;
.super Ljava/lang/Object;
.source "CompositeMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/CompositeMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MediaSourceAndListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final caller:Lcom/google/android/exoplayer2/source/MediaSource$MediaSourceCaller;

.field public final eventListener:Lcom/google/android/exoplayer2/source/CompositeMediaSource$ForwardingEventListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/source/CompositeMediaSource<",
            "TT;>.ForwardingEvent",
            "Listener;"
        }
    .end annotation
.end field

.field public final mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/MediaSource;Lcom/google/android/exoplayer2/source/MediaSource$MediaSourceCaller;Lcom/google/android/exoplayer2/source/CompositeMediaSource$ForwardingEventListener;)V
    .registers 4
    .param p1, "mediaSource"    # Lcom/google/android/exoplayer2/source/MediaSource;
    .param p2, "caller"    # Lcom/google/android/exoplayer2/source/MediaSource$MediaSourceCaller;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/source/MediaSource;",
            "Lcom/google/android/exoplayer2/source/MediaSource$MediaSourceCaller;",
            "Lcom/google/android/exoplayer2/source/CompositeMediaSource<",
            "TT;>.ForwardingEvent",
            "Listener;",
            ")V"
        }
    .end annotation

    .line 215
    .local p0, "this":Lcom/google/android/exoplayer2/source/CompositeMediaSource$MediaSourceAndListener;, "Lcom/google/android/exoplayer2/source/CompositeMediaSource$MediaSourceAndListener<TT;>;"
    .local p3, "eventListener":Lcom/google/android/exoplayer2/source/CompositeMediaSource$ForwardingEventListener;, "Lcom/google/android/exoplayer2/source/CompositeMediaSource<TT;>.ForwardingEventListener;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 216
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/CompositeMediaSource$MediaSourceAndListener;->mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    .line 217
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/CompositeMediaSource$MediaSourceAndListener;->caller:Lcom/google/android/exoplayer2/source/MediaSource$MediaSourceCaller;

    .line 218
    iput-object p3, p0, Lcom/google/android/exoplayer2/source/CompositeMediaSource$MediaSourceAndListener;->eventListener:Lcom/google/android/exoplayer2/source/CompositeMediaSource$ForwardingEventListener;

    .line 219
    return-void
.end method
