.class public interface abstract Lcom/google/android/exoplayer2/text/SubtitleDecoderFactory;
.super Ljava/lang/Object;
.source "SubtitleDecoderFactory.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final DEFAULT:Lcom/google/android/exoplayer2/text/SubtitleDecoderFactory;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 80
    new-instance v0, Lcom/google/android/exoplayer2/text/SubtitleDecoderFactory$1;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/text/SubtitleDecoderFactory$1;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/text/SubtitleDecoderFactory;->DEFAULT:Lcom/google/android/exoplayer2/text/SubtitleDecoderFactory;

    return-void
.end method


# virtual methods
.method public abstract createDecoder(Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/text/SubtitleDecoder;
.end method

.method public abstract supportsFormat(Lcom/google/android/exoplayer2/Format;)Z
.end method
