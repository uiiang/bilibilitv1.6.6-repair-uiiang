.class public final Lcom/google/android/exoplayer2/RendererConfiguration;
.super Ljava/lang/Object;
.source "RendererConfiguration.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final DEFAULT:Lcom/google/android/exoplayer2/RendererConfiguration;


# instance fields
.field public final tunneling:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 32
    new-instance v0, Lcom/google/android/exoplayer2/RendererConfiguration;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/RendererConfiguration;-><init>(Z)V

    sput-object v0, Lcom/google/android/exoplayer2/RendererConfiguration;->DEFAULT:Lcom/google/android/exoplayer2/RendererConfiguration;

    return-void
.end method

.method public constructor <init>(Z)V
    .registers 2
    .param p1, "tunneling"    # Z

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/RendererConfiguration;->tunneling:Z

    .line 43
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 47
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 48
    return v0

    .line 50
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_1e

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_1e

    .line 53
    :cond_12
    move-object v2, p1

    check-cast v2, Lcom/google/android/exoplayer2/RendererConfiguration;

    .line 54
    .local v2, "other":Lcom/google/android/exoplayer2/RendererConfiguration;
    iget-boolean v3, p0, Lcom/google/android/exoplayer2/RendererConfiguration;->tunneling:Z

    iget-boolean v4, v2, Lcom/google/android/exoplayer2/RendererConfiguration;->tunneling:Z

    if-ne v3, v4, :cond_1c

    goto :goto_1d

    :cond_1c
    const/4 v0, 0x0

    :goto_1d
    return v0

    .line 51
    .end local v2    # "other":Lcom/google/android/exoplayer2/RendererConfiguration;
    :cond_1e
    :goto_1e
    return v1
.end method

.method public hashCode()I
    .registers 2

    .line 59
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/RendererConfiguration;->tunneling:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
