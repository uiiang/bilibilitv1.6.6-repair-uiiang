.class final Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory$ExtensionLoader;
.super Ljava/lang/Object;
.source "DefaultExtractorsFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ExtensionLoader"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory$ExtensionLoader$ConstructorSupplier;
    }
.end annotation


# instance fields
.field private final constructorSupplier:Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory$ExtensionLoader$ConstructorSupplier;

.field private final extensionLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private extractorConstructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "+",
            "Lcom/google/android/exoplayer2/extractor/Extractor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory$ExtensionLoader$ConstructorSupplier;)V
    .registers 4
    .param p1, "constructorSupplier"    # Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory$ExtensionLoader$ConstructorSupplier;

    .line 518
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 519
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory$ExtensionLoader;->constructorSupplier:Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory$ExtensionLoader$ConstructorSupplier;

    .line 520
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory$ExtensionLoader;->extensionLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 521
    return-void
.end method

.method private maybeLoadExtractorConstructor()Ljava/lang/reflect/Constructor;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/reflect/Constructor<",
            "+",
            "Lcom/google/android/exoplayer2/extractor/Extractor;",
            ">;"
        }
    .end annotation

    .line 539
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory$ExtensionLoader;->extensionLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v0

    .line 540
    :try_start_3
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory$ExtensionLoader;->extensionLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 541
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory$ExtensionLoader;->extractorConstructor:Ljava/lang/reflect/Constructor;

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_2c

    return-object v1

    .line 544
    :cond_f
    :try_start_f
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory$ExtensionLoader;->constructorSupplier:Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory$ExtensionLoader$ConstructorSupplier;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory$ExtensionLoader$ConstructorSupplier;->getConstructor()Ljava/lang/reflect/Constructor;

    move-result-object v1
    :try_end_15
    .catch Ljava/lang/ClassNotFoundException; {:try_start_f .. :try_end_15} :catch_20
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_15} :catch_17
    .catchall {:try_start_f .. :try_end_15} :catchall_2c

    :try_start_15
    monitor-exit v0

    return-object v1

    .line 547
    :catch_17
    move-exception v1

    .line 549
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Error instantiating extension"

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 545
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_20
    move-exception v1

    .line 550
    nop

    .line 551
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory$ExtensionLoader;->extensionLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 552
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory$ExtensionLoader;->extractorConstructor:Ljava/lang/reflect/Constructor;

    monitor-exit v0

    return-object v1

    .line 553
    :catchall_2c
    move-exception v1

    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_15 .. :try_end_2e} :catchall_2c

    throw v1
.end method


# virtual methods
.method public varargs getExtractor([Ljava/lang/Object;)Lcom/google/android/exoplayer2/extractor/Extractor;
    .registers 6
    .param p1, "constructorParams"    # [Ljava/lang/Object;

    .line 526
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory$ExtensionLoader;->maybeLoadExtractorConstructor()Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 527
    .local v0, "extractorConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Lcom/google/android/exoplayer2/extractor/Extractor;>;"
    if-nez v0, :cond_8

    .line 528
    const/4 v1, 0x0

    return-object v1

    .line 531
    :cond_8
    :try_start_8
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/extractor/Extractor;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_e} :catch_f

    return-object v1

    .line 532
    :catch_f
    move-exception v1

    .line 533
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Unexpected error creating extractor"

    invoke-direct {v2, v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method
