.class public final Lcom/google/android/exoplayer2/source/DefaultCompositeSequenceableLoaderFactory;
.super Ljava/lang/Object;
.source "DefaultCompositeSequenceableLoaderFactory.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/CompositeSequenceableLoaderFactory;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs createCompositeSequenceableLoader([Lcom/google/android/exoplayer2/source/SequenceableLoader;)Lcom/google/android/exoplayer2/source/SequenceableLoader;
    .registers 3
    .param p1, "loaders"    # [Lcom/google/android/exoplayer2/source/SequenceableLoader;

    .line 32
    new-instance v0, Lcom/google/android/exoplayer2/source/CompositeSequenceableLoader;

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/source/CompositeSequenceableLoader;-><init>([Lcom/google/android/exoplayer2/source/SequenceableLoader;)V

    return-object v0
.end method
