.class public interface abstract Lcom/google/android/exoplayer2/util/GlObjectsProvider;
.super Ljava/lang/Object;
.source "GlObjectsProvider.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final DEFAULT:Lcom/google/android/exoplayer2/util/GlObjectsProvider;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 44
    new-instance v0, Lcom/google/android/exoplayer2/util/GlObjectsProvider$1;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/util/GlObjectsProvider$1;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/util/GlObjectsProvider;->DEFAULT:Lcom/google/android/exoplayer2/util/GlObjectsProvider;

    return-void
.end method


# virtual methods
.method public abstract createBuffersForTexture(III)Lcom/google/android/exoplayer2/util/GlTextureInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/util/GlUtil$GlException;
        }
    .end annotation
.end method

.method public abstract createEglContext(Landroid/opengl/EGLDisplay;I[I)Landroid/opengl/EGLContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/util/GlUtil$GlException;
        }
    .end annotation
.end method

.method public abstract createEglSurface(Landroid/opengl/EGLDisplay;Ljava/lang/Object;IZ)Landroid/opengl/EGLSurface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/util/GlUtil$GlException;
        }
    .end annotation
.end method

.method public abstract createFocusedPlaceholderEglSurface(Landroid/opengl/EGLContext;Landroid/opengl/EGLDisplay;[I)Landroid/opengl/EGLSurface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/util/GlUtil$GlException;
        }
    .end annotation
.end method
