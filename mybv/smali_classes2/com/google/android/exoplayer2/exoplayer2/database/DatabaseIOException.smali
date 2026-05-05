.class public final Lcom/google/android/exoplayer2/database/DatabaseIOException;
.super Ljava/io/IOException;
.source "DatabaseIOException.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>(Landroid/database/SQLException;)V
    .registers 2
    .param p1, "cause"    # Landroid/database/SQLException;

    .line 33
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/database/SQLException;Ljava/lang/String;)V
    .registers 3
    .param p1, "cause"    # Landroid/database/SQLException;
    .param p2, "message"    # Ljava/lang/String;

    .line 37
    invoke-direct {p0, p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 38
    return-void
.end method
