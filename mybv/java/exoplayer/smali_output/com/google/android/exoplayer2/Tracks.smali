.class public final Lcom/google/android/exoplayer2/Tracks;
.super Ljava/lang/Object;
.source "Tracks.java"

# interfaces
.implements Lcom/google/android/exoplayer2/Bundleable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/Tracks$Group;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final CREATOR:Lcom/google/android/exoplayer2/Bundleable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/Bundleable$Creator<",
            "Lcom/google/android/exoplayer2/Tracks;",
            ">;"
        }
    .end annotation
.end field

.field public static final EMPTY:Lcom/google/android/exoplayer2/Tracks;

.field private static final FIELD_TRACK_GROUPS:Ljava/lang/String;


# instance fields
.field private final groups:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Lcom/google/android/exoplayer2/Tracks$Group;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 270
    new-instance v0, Lcom/google/android/exoplayer2/Tracks;

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/Tracks;-><init>(Ljava/util/List;)V

    sput-object v0, Lcom/google/android/exoplayer2/Tracks;->EMPTY:Lcom/google/android/exoplayer2/Tracks;

    .line 380
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/Tracks;->FIELD_TRACK_GROUPS:Ljava/lang/String;

    .line 390
    new-instance v0, Lcom/google/android/exoplayer2/Tracks$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/Tracks$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/Tracks;->CREATOR:Lcom/google/android/exoplayer2/Bundleable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/Tracks$Group;",
            ">;)V"
        }
    .end annotation

    .line 279
    .local p1, "groups":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/Tracks$Group;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 280
    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/Tracks;->groups:Lcom/google/common/collect/ImmutableList;

    .line 281
    return-void
.end method

.method static synthetic lambda$static$0(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/Tracks;
    .registers 4
    .param p0, "bundle"    # Landroid/os/Bundle;

    .line 392
    sget-object v0, Lcom/google/android/exoplayer2/Tracks;->FIELD_TRACK_GROUPS:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 394
    .local v0, "groupBundles":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    if-nez v0, :cond_d

    .line 395
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    goto :goto_13

    .line 396
    :cond_d
    sget-object v1, Lcom/google/android/exoplayer2/Tracks$Group;->CREATOR:Lcom/google/android/exoplayer2/Bundleable$Creator;

    invoke-static {v1, v0}, Lcom/google/android/exoplayer2/util/BundleableUtil;->fromBundleList(Lcom/google/android/exoplayer2/Bundleable$Creator;Ljava/util/List;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    :goto_13
    nop

    .line 397
    .local v1, "groups":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/Tracks$Group;>;"
    new-instance v2, Lcom/google/android/exoplayer2/Tracks;

    invoke-direct {v2, v1}, Lcom/google/android/exoplayer2/Tracks;-><init>(Ljava/util/List;)V

    return-object v2
.end method


# virtual methods
.method public containsType(I)Z
    .registers 4
    .param p1, "trackType"    # I

    .line 295
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/Tracks;->groups:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1c

    .line 296
    iget-object v1, p0, Lcom/google/android/exoplayer2/Tracks;->groups:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1, v0}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/Tracks$Group;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/Tracks$Group;->getType()I

    move-result v1

    if-ne v1, p1, :cond_19

    .line 297
    const/4 v1, 0x1

    return v1

    .line 295
    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 300
    .end local v0    # "i":I
    :cond_1c
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "other"    # Ljava/lang/Object;

    .line 364
    if-ne p0, p1, :cond_4

    .line 365
    const/4 v0, 0x1

    return v0

    .line 367
    :cond_4
    if-eqz p1, :cond_1d

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_11

    goto :goto_1d

    .line 370
    :cond_11
    move-object v0, p1

    check-cast v0, Lcom/google/android/exoplayer2/Tracks;

    .line 371
    .local v0, "that":Lcom/google/android/exoplayer2/Tracks;
    iget-object v1, p0, Lcom/google/android/exoplayer2/Tracks;->groups:Lcom/google/common/collect/ImmutableList;

    iget-object v2, v0, Lcom/google/android/exoplayer2/Tracks;->groups:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1, v2}, Lcom/google/common/collect/ImmutableList;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 368
    .end local v0    # "that":Lcom/google/android/exoplayer2/Tracks;
    :cond_1d
    :goto_1d
    const/4 v0, 0x0

    return v0
.end method

.method public getGroups()Lcom/google/common/collect/ImmutableList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList<",
            "Lcom/google/android/exoplayer2/Tracks$Group;",
            ">;"
        }
    .end annotation

    .line 285
    iget-object v0, p0, Lcom/google/android/exoplayer2/Tracks;->groups:Lcom/google/common/collect/ImmutableList;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .line 376
    iget-object v0, p0, Lcom/google/android/exoplayer2/Tracks;->groups:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .registers 2

    .line 290
    iget-object v0, p0, Lcom/google/android/exoplayer2/Tracks;->groups:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isTypeSelected(I)Z
    .registers 5
    .param p1, "trackType"    # I

    .line 353
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/Tracks;->groups:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v1

    if-ge v0, v1, :cond_22

    .line 354
    iget-object v1, p0, Lcom/google/android/exoplayer2/Tracks;->groups:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1, v0}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/Tracks$Group;

    .line 355
    .local v1, "group":Lcom/google/android/exoplayer2/Tracks$Group;
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/Tracks$Group;->isSelected()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/Tracks$Group;->getType()I

    move-result v2

    if-ne v2, p1, :cond_1f

    .line 356
    const/4 v2, 0x1

    return v2

    .line 353
    .end local v1    # "group":Lcom/google/android/exoplayer2/Tracks$Group;
    :cond_1f
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 359
    .end local v0    # "i":I
    :cond_22
    const/4 v0, 0x0

    return v0
.end method

.method public isTypeSupported(I)Z
    .registers 3
    .param p1, "trackType"    # I

    .line 308
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/exoplayer2/Tracks;->isTypeSupported(IZ)Z

    move-result v0

    return v0
.end method

.method public isTypeSupported(IZ)Z
    .registers 5
    .param p1, "trackType"    # I
    .param p2, "allowExceedsCapabilities"    # Z

    .line 323
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/Tracks;->groups:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2a

    .line 324
    iget-object v1, p0, Lcom/google/android/exoplayer2/Tracks;->groups:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1, v0}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/Tracks$Group;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/Tracks$Group;->getType()I

    move-result v1

    if-ne v1, p1, :cond_27

    .line 325
    iget-object v1, p0, Lcom/google/android/exoplayer2/Tracks;->groups:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1, v0}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/Tracks$Group;

    invoke-virtual {v1, p2}, Lcom/google/android/exoplayer2/Tracks$Group;->isSupported(Z)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 326
    const/4 v1, 0x1

    return v1

    .line 323
    :cond_27
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 330
    .end local v0    # "i":I
    :cond_2a
    const/4 v0, 0x0

    return v0
.end method

.method public isTypeSupportedOrEmpty(I)Z
    .registers 3
    .param p1, "trackType"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 339
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/exoplayer2/Tracks;->isTypeSupportedOrEmpty(IZ)Z

    move-result v0

    return v0
.end method

.method public isTypeSupportedOrEmpty(IZ)Z
    .registers 4
    .param p1, "trackType"    # I
    .param p2, "allowExceedsCapabilities"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 348
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/Tracks;->containsType(I)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/Tracks;->isTypeSupported(IZ)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method public toBundle()Landroid/os/Bundle;
    .registers 4

    .line 384
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 385
    .local v0, "bundle":Landroid/os/Bundle;
    sget-object v1, Lcom/google/android/exoplayer2/Tracks;->FIELD_TRACK_GROUPS:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/exoplayer2/Tracks;->groups:Lcom/google/common/collect/ImmutableList;

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/BundleableUtil;->toBundleArrayList(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 386
    return-object v0
.end method
