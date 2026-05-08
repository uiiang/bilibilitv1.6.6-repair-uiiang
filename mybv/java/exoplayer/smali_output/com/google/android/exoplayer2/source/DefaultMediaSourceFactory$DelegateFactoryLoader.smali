.class final Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader;
.super Ljava/lang/Object;
.source "DefaultMediaSourceFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DelegateFactoryLoader"
.end annotation


# instance fields
.field private cmcdConfigurationFactory:Lcom/google/android/exoplayer2/upstream/CmcdConfiguration$Factory;

.field private dataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

.field private drmSessionManagerProvider:Lcom/google/android/exoplayer2/drm/DrmSessionManagerProvider;

.field private final extractorsFactory:Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;

.field private loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

.field private final mediaSourceFactories:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/google/android/exoplayer2/source/MediaSource$Factory;",
            ">;"
        }
    .end annotation
.end field

.field private final mediaSourceFactorySuppliers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/google/common/base/Supplier<",
            "Lcom/google/android/exoplayer2/source/MediaSource$Factory;",
            ">;>;"
        }
    .end annotation
.end field

.field private final supportedTypes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;)V
    .registers 3
    .param p1, "extractorsFactory"    # Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;

    .line 570
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 571
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->extractorsFactory:Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;

    .line 572
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->mediaSourceFactorySuppliers:Ljava/util/Map;

    .line 573
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->supportedTypes:Ljava/util/Set;

    .line 574
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->mediaSourceFactories:Ljava/util/Map;

    .line 575
    return-void
.end method

.method private ensureAllSuppliersAreLoaded()V
    .registers 2

    .line 641
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->maybeLoadSupplier(I)Lcom/google/common/base/Supplier;

    .line 642
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->maybeLoadSupplier(I)Lcom/google/common/base/Supplier;

    .line 643
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->maybeLoadSupplier(I)Lcom/google/common/base/Supplier;

    .line 644
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->maybeLoadSupplier(I)Lcom/google/common/base/Supplier;

    .line 645
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->maybeLoadSupplier(I)Lcom/google/common/base/Supplier;

    .line 646
    return-void
.end method

.method static synthetic lambda$maybeLoadSupplier$0(Ljava/lang/Class;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)Lcom/google/android/exoplayer2/source/MediaSource$Factory;
    .registers 3
    .param p0, "clazz"    # Ljava/lang/Class;
    .param p1, "dataSourceFactory"    # Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    .line 663
    # invokes: Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory;->newInstance(Ljava/lang/Class;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)Lcom/google/android/exoplayer2/source/MediaSource$Factory;
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory;->access$100(Ljava/lang/Class;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)Lcom/google/android/exoplayer2/source/MediaSource$Factory;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$maybeLoadSupplier$1(Ljava/lang/Class;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)Lcom/google/android/exoplayer2/source/MediaSource$Factory;
    .registers 3
    .param p0, "clazz"    # Ljava/lang/Class;
    .param p1, "dataSourceFactory"    # Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    .line 670
    # invokes: Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory;->newInstance(Ljava/lang/Class;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)Lcom/google/android/exoplayer2/source/MediaSource$Factory;
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory;->access$100(Ljava/lang/Class;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)Lcom/google/android/exoplayer2/source/MediaSource$Factory;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$maybeLoadSupplier$2(Ljava/lang/Class;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)Lcom/google/android/exoplayer2/source/MediaSource$Factory;
    .registers 3
    .param p0, "clazz"    # Ljava/lang/Class;
    .param p1, "dataSourceFactory"    # Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    .line 676
    # invokes: Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory;->newInstance(Ljava/lang/Class;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)Lcom/google/android/exoplayer2/source/MediaSource$Factory;
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory;->access$100(Ljava/lang/Class;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)Lcom/google/android/exoplayer2/source/MediaSource$Factory;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$maybeLoadSupplier$3(Ljava/lang/Class;)Lcom/google/android/exoplayer2/source/MediaSource$Factory;
    .registers 2
    .param p0, "clazz"    # Ljava/lang/Class;

    .line 682
    # invokes: Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory;->newInstance(Ljava/lang/Class;)Lcom/google/android/exoplayer2/source/MediaSource$Factory;
    invoke-static {p0}, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory;->access$000(Ljava/lang/Class;)Lcom/google/android/exoplayer2/source/MediaSource$Factory;

    move-result-object v0

    return-object v0
.end method

.method private maybeLoadSupplier(I)Lcom/google/common/base/Supplier;
    .registers 6
    .param p1, "contentType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/base/Supplier<",
            "Lcom/google/android/exoplayer2/source/MediaSource$Factory;",
            ">;"
        }
    .end annotation

    .line 650
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->mediaSourceFactorySuppliers:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 651
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->mediaSourceFactorySuppliers:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/Supplier;

    return-object v0

    .line 654
    :cond_19
    const/4 v0, 0x0

    .line 655
    .local v0, "mediaSourceFactorySupplier":Lcom/google/common/base/Supplier;, "Lcom/google/common/base/Supplier<Lcom/google/android/exoplayer2/source/MediaSource$Factory;>;"
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->dataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    .line 658
    .local v1, "dataSourceFactory":Lcom/google/android/exoplayer2/upstream/DataSource$Factory;
    packed-switch p1, :pswitch_data_92

    goto :goto_7b

    .line 685
    :pswitch_26
    :try_start_26
    new-instance v2, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0, v1}, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader$$ExternalSyntheticLambda4;-><init>(Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    move-object v0, v2

    .line 687
    goto :goto_7b

    .line 679
    :pswitch_2d
    const-string v2, "com.google.android.exoplayer2.source.rtsp.RtspMediaSource$Factory"

    .line 680
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/google/android/exoplayer2/source/MediaSource$Factory;

    .line 681
    invoke-virtual {v2, v3}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v2

    .line 682
    .local v2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/google/android/exoplayer2/source/MediaSource$Factory;>;"
    new-instance v3, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader$$ExternalSyntheticLambda3;

    invoke-direct {v3, v2}, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader$$ExternalSyntheticLambda3;-><init>(Ljava/lang/Class;)V

    move-object v0, v3

    .line 683
    goto :goto_7b

    .line 673
    .end local v2    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/google/android/exoplayer2/source/MediaSource$Factory;>;"
    :pswitch_40
    const-string v2, "com.google.android.exoplayer2.source.hls.HlsMediaSource$Factory"

    .line 674
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/google/android/exoplayer2/source/MediaSource$Factory;

    .line 675
    invoke-virtual {v2, v3}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v2

    .line 676
    .restart local v2    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/google/android/exoplayer2/source/MediaSource$Factory;>;"
    new-instance v3, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader$$ExternalSyntheticLambda2;

    invoke-direct {v3, v2, v1}, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Class;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    move-object v0, v3

    .line 677
    goto :goto_7b

    .line 666
    .end local v2    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/google/android/exoplayer2/source/MediaSource$Factory;>;"
    :pswitch_53
    const-string v2, "com.google.android.exoplayer2.source.smoothstreaming.SsMediaSource$Factory"

    .line 667
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/google/android/exoplayer2/source/MediaSource$Factory;

    .line 669
    invoke-virtual {v2, v3}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v2

    .line 670
    .restart local v2    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/google/android/exoplayer2/source/MediaSource$Factory;>;"
    new-instance v3, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader$$ExternalSyntheticLambda1;

    invoke-direct {v3, v2, v1}, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Class;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    move-object v0, v3

    .line 671
    goto :goto_7b

    .line 660
    .end local v2    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/google/android/exoplayer2/source/MediaSource$Factory;>;"
    :pswitch_66
    const-string v2, "com.google.android.exoplayer2.source.dash.DashMediaSource$Factory"

    .line 661
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/google/android/exoplayer2/source/MediaSource$Factory;

    .line 662
    invoke-virtual {v2, v3}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v2

    .line 663
    .restart local v2    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/google/android/exoplayer2/source/MediaSource$Factory;>;"
    new-instance v3, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader$$ExternalSyntheticLambda0;

    invoke-direct {v3, v2, v1}, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Class;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V
    :try_end_77
    .catch Ljava/lang/ClassNotFoundException; {:try_start_26 .. :try_end_77} :catch_79

    move-object v0, v3

    .line 664
    goto :goto_7b

    .line 691
    .end local v2    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/google/android/exoplayer2/source/MediaSource$Factory;>;"
    :catch_79
    move-exception v2

    goto :goto_7c

    .line 693
    :goto_7b
    nop

    .line 694
    :goto_7c
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->mediaSourceFactorySuppliers:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 695
    if-eqz v0, :cond_90

    .line 696
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->supportedTypes:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 698
    :cond_90
    return-object v0

    nop

    :pswitch_data_92
    .packed-switch 0x0
        :pswitch_66
        :pswitch_53
        :pswitch_40
        :pswitch_2d
        :pswitch_26
    .end packed-switch
.end method


# virtual methods
.method public getMediaSourceFactory(I)Lcom/google/android/exoplayer2/source/MediaSource$Factory;
    .registers 6
    .param p1, "contentType"    # I

    .line 585
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->mediaSourceFactories:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/MediaSource$Factory;

    .line 586
    .local v0, "mediaSourceFactory":Lcom/google/android/exoplayer2/source/MediaSource$Factory;
    if-eqz v0, :cond_f

    .line 587
    return-object v0

    .line 590
    :cond_f
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->maybeLoadSupplier(I)Lcom/google/common/base/Supplier;

    move-result-object v1

    .line 591
    .local v1, "mediaSourceFactorySupplier":Lcom/google/common/base/Supplier;, "Lcom/google/common/base/Supplier<Lcom/google/android/exoplayer2/source/MediaSource$Factory;>;"
    if-nez v1, :cond_17

    .line 592
    const/4 v2, 0x0

    return-object v2

    .line 595
    :cond_17
    invoke-interface {v1}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/google/android/exoplayer2/source/MediaSource$Factory;

    .line 596
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->cmcdConfigurationFactory:Lcom/google/android/exoplayer2/upstream/CmcdConfiguration$Factory;

    if-eqz v2, :cond_25

    .line 597
    invoke-interface {v0, v2}, Lcom/google/android/exoplayer2/source/MediaSource$Factory;->setCmcdConfigurationFactory(Lcom/google/android/exoplayer2/upstream/CmcdConfiguration$Factory;)Lcom/google/android/exoplayer2/source/MediaSource$Factory;

    .line 599
    :cond_25
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->drmSessionManagerProvider:Lcom/google/android/exoplayer2/drm/DrmSessionManagerProvider;

    if-eqz v2, :cond_2c

    .line 600
    invoke-interface {v0, v2}, Lcom/google/android/exoplayer2/source/MediaSource$Factory;->setDrmSessionManagerProvider(Lcom/google/android/exoplayer2/drm/DrmSessionManagerProvider;)Lcom/google/android/exoplayer2/source/MediaSource$Factory;

    .line 602
    :cond_2c
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

    if-eqz v2, :cond_33

    .line 603
    invoke-interface {v0, v2}, Lcom/google/android/exoplayer2/source/MediaSource$Factory;->setLoadErrorHandlingPolicy(Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;)Lcom/google/android/exoplayer2/source/MediaSource$Factory;

    .line 605
    :cond_33
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->mediaSourceFactories:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 606
    return-object v0
.end method

.method public getSupportedTypes()[I
    .registers 2

    .line 578
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->ensureAllSuppliersAreLoaded()V

    .line 579
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->supportedTypes:Ljava/util/Set;

    invoke-static {v0}, Lcom/google/common/primitives/Ints;->toArray(Ljava/util/Collection;)[I

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$maybeLoadSupplier$4$com-google-android-exoplayer2-source-DefaultMediaSourceFactory$DelegateFactoryLoader(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)Lcom/google/android/exoplayer2/source/MediaSource$Factory;
    .registers 4
    .param p1, "dataSourceFactory"    # Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    .line 686
    new-instance v0, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource$Factory;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->extractorsFactory:Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;

    invoke-direct {v0, p1, v1}, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource$Factory;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;)V

    return-object v0
.end method

.method public setCmcdConfigurationFactory(Lcom/google/android/exoplayer2/upstream/CmcdConfiguration$Factory;)V
    .registers 4
    .param p1, "cmcdConfigurationFactory"    # Lcom/google/android/exoplayer2/upstream/CmcdConfiguration$Factory;

    .line 620
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->cmcdConfigurationFactory:Lcom/google/android/exoplayer2/upstream/CmcdConfiguration$Factory;

    .line 621
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->mediaSourceFactories:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/source/MediaSource$Factory;

    .line 622
    .local v1, "mediaSourceFactory":Lcom/google/android/exoplayer2/source/MediaSource$Factory;
    invoke-interface {v1, p1}, Lcom/google/android/exoplayer2/source/MediaSource$Factory;->setCmcdConfigurationFactory(Lcom/google/android/exoplayer2/upstream/CmcdConfiguration$Factory;)Lcom/google/android/exoplayer2/source/MediaSource$Factory;

    .line 623
    .end local v1    # "mediaSourceFactory":Lcom/google/android/exoplayer2/source/MediaSource$Factory;
    goto :goto_c

    .line 624
    :cond_1c
    return-void
.end method

.method public setDataSourceFactory(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V
    .registers 3
    .param p1, "dataSourceFactory"    # Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    .line 610
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->dataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    if-eq p1, v0, :cond_10

    .line 611
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->dataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    .line 614
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->mediaSourceFactorySuppliers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 615
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->mediaSourceFactories:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 617
    :cond_10
    return-void
.end method

.method public setDrmSessionManagerProvider(Lcom/google/android/exoplayer2/drm/DrmSessionManagerProvider;)V
    .registers 4
    .param p1, "drmSessionManagerProvider"    # Lcom/google/android/exoplayer2/drm/DrmSessionManagerProvider;

    .line 627
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->drmSessionManagerProvider:Lcom/google/android/exoplayer2/drm/DrmSessionManagerProvider;

    .line 628
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->mediaSourceFactories:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/source/MediaSource$Factory;

    .line 629
    .local v1, "mediaSourceFactory":Lcom/google/android/exoplayer2/source/MediaSource$Factory;
    invoke-interface {v1, p1}, Lcom/google/android/exoplayer2/source/MediaSource$Factory;->setDrmSessionManagerProvider(Lcom/google/android/exoplayer2/drm/DrmSessionManagerProvider;)Lcom/google/android/exoplayer2/source/MediaSource$Factory;

    .line 630
    .end local v1    # "mediaSourceFactory":Lcom/google/android/exoplayer2/source/MediaSource$Factory;
    goto :goto_c

    .line 631
    :cond_1c
    return-void
.end method

.method public setLoadErrorHandlingPolicy(Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;)V
    .registers 4
    .param p1, "loadErrorHandlingPolicy"    # Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

    .line 634
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

    .line 635
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->mediaSourceFactories:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/source/MediaSource$Factory;

    .line 636
    .local v1, "mediaSourceFactory":Lcom/google/android/exoplayer2/source/MediaSource$Factory;
    invoke-interface {v1, p1}, Lcom/google/android/exoplayer2/source/MediaSource$Factory;->setLoadErrorHandlingPolicy(Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;)Lcom/google/android/exoplayer2/source/MediaSource$Factory;

    .line 637
    .end local v1    # "mediaSourceFactory":Lcom/google/android/exoplayer2/source/MediaSource$Factory;
    goto :goto_c

    .line 638
    :cond_1c
    return-void
.end method
