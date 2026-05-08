.class public final Lcom/google/android/exoplayer2/database/ExoDatabaseProvider;
.super Lcom/google/android/exoplayer2/database/StandaloneDatabaseProvider;
.source "ExoDatabaseProvider.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .line 27
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/database/StandaloneDatabaseProvider;-><init>(Landroid/content/Context;)V

    .line 28
    return-void
.end method
