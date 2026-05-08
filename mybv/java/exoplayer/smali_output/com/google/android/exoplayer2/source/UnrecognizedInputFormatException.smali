.class public Lcom/google/android/exoplayer2/source/UnrecognizedInputFormatException;
.super Lcom/google/android/exoplayer2/ParserException;
.source "UnrecognizedInputFormatException.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public final uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/net/Uri;)V
    .registers 6
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;

    .line 41
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ZI)V

    .line 42
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/UnrecognizedInputFormatException;->uri:Landroid/net/Uri;

    .line 43
    return-void
.end method
