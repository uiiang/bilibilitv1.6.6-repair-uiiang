.class public interface abstract Lcom/google/android/exoplayer2/RendererCapabilities;
.super Ljava/lang/Object;
.source "RendererCapabilities.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/RendererCapabilities$Capabilities;,
        Lcom/google/android/exoplayer2/RendererCapabilities$DecoderSupport;,
        Lcom/google/android/exoplayer2/RendererCapabilities$HardwareAccelerationSupport;,
        Lcom/google/android/exoplayer2/RendererCapabilities$TunnelingSupport;,
        Lcom/google/android/exoplayer2/RendererCapabilities$AdaptiveSupport;,
        Lcom/google/android/exoplayer2/RendererCapabilities$FormatSupport;,
        Lcom/google/android/exoplayer2/RendererCapabilities$Listener;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final ADAPTIVE_NOT_SEAMLESS:I = 0x8

.field public static final ADAPTIVE_NOT_SUPPORTED:I = 0x0

.field public static final ADAPTIVE_SEAMLESS:I = 0x10

.field public static final ADAPTIVE_SUPPORT_MASK:I = 0x18

.field public static final DECODER_SUPPORT_FALLBACK:I = 0x0

.field public static final DECODER_SUPPORT_FALLBACK_MIMETYPE:I = 0x100

.field public static final DECODER_SUPPORT_PRIMARY:I = 0x80

.field public static final FORMAT_EXCEEDS_CAPABILITIES:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FORMAT_HANDLED:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FORMAT_SUPPORT_MASK:I = 0x7

.field public static final FORMAT_UNSUPPORTED_DRM:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FORMAT_UNSUPPORTED_SUBTYPE:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FORMAT_UNSUPPORTED_TYPE:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final HARDWARE_ACCELERATION_NOT_SUPPORTED:I = 0x0

.field public static final HARDWARE_ACCELERATION_SUPPORTED:I = 0x40

.field public static final HARDWARE_ACCELERATION_SUPPORT_MASK:I = 0x40

.field public static final MODE_SUPPORT_MASK:I = 0x180

.field public static final TUNNELING_NOT_SUPPORTED:I = 0x0

.field public static final TUNNELING_SUPPORTED:I = 0x20

.field public static final TUNNELING_SUPPORT_MASK:I = 0x20


# virtual methods
.method public abstract clearListener()V
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getTrackType()I
.end method

.method public abstract setListener(Lcom/google/android/exoplayer2/RendererCapabilities$Listener;)V
.end method

.method public abstract supportsFormat(Lcom/google/android/exoplayer2/Format;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation
.end method

.method public abstract supportsMixedMimeTypeAdaptation()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation
.end method
