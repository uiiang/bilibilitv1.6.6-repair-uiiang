.class public Lcom/google/android/exoplayer2/decoder/CryptoException;
.super Ljava/lang/Exception;
.source "CryptoException.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public final errorCode:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .registers 3
    .param p1, "errorCode"    # I
    .param p2, "message"    # Ljava/lang/String;

    .line 37
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 38
    iput p1, p0, Lcom/google/android/exoplayer2/decoder/CryptoException;->errorCode:I

    .line 39
    return-void
.end method
