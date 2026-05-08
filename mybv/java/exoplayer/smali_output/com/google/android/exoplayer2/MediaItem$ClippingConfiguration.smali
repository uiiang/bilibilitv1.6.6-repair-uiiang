.class public Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration;
.super Ljava/lang/Object;
.source "MediaItem.java"

# interfaces
.implements Lcom/google/android/exoplayer2/Bundleable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/MediaItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ClippingConfiguration"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Lcom/google/android/exoplayer2/Bundleable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/Bundleable$Creator<",
            "Lcom/google/android/exoplayer2/MediaItem$ClippingProperties;",
            ">;"
        }
    .end annotation
.end field

.field private static final FIELD_END_POSITION_MS:Ljava/lang/String;

.field private static final FIELD_RELATIVE_TO_DEFAULT_POSITION:Ljava/lang/String;

.field private static final FIELD_RELATIVE_TO_LIVE_WINDOW:Ljava/lang/String;

.field private static final FIELD_STARTS_AT_KEY_FRAME:Ljava/lang/String;

.field private static final FIELD_START_POSITION_MS:Ljava/lang/String;

.field public static final UNSET:Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration;


# instance fields
.field public final endPositionMs:J

.field public final relativeToDefaultPosition:Z

.field public final relativeToLiveWindow:Z

.field public final startPositionMs:J

.field public final startsAtKeyFrame:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1751
    new-instance v0, Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration$Builder;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration$Builder;->build()Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration;->UNSET:Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration;

    .line 1913
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration;->FIELD_START_POSITION_MS:Ljava/lang/String;

    .line 1914
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration;->FIELD_END_POSITION_MS:Ljava/lang/String;

    .line 1915
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration;->FIELD_RELATIVE_TO_LIVE_WINDOW:Ljava/lang/String;

    .line 1916
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration;->FIELD_RELATIVE_TO_DEFAULT_POSITION:Ljava/lang/String;

    .line 1917
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration;->FIELD_STARTS_AT_KEY_FRAME:Ljava/lang/String;

    .line 1941
    new-instance v0, Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration;->CREATOR:Lcom/google/android/exoplayer2/Bundleable$Creator;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration$Builder;)V
    .registers 4
    .param p1, "builder"    # Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration$Builder;

    .line 1870
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1871
    # getter for: Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration$Builder;->startPositionMs:J
    invoke-static {p1}, Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration$Builder;->access$3800(Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration;->startPositionMs:J

    .line 1872
    # getter for: Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration$Builder;->endPositionMs:J
    invoke-static {p1}, Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration$Builder;->access$3900(Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration;->endPositionMs:J

    .line 1873
    # getter for: Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration$Builder;->relativeToLiveWindow:Z
    invoke-static {p1}, Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration$Builder;->access$4000(Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration;->relativeToLiveWindow:Z

    .line 1874
    # getter for: Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration$Builder;->relativeToDefaultPosition:Z
    invoke-static {p1}, Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration$Builder;->access$4100(Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration;->relativeToDefaultPosition:Z

    .line 1875
    # getter for: Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration$Builder;->startsAtKeyFrame:Z
    invoke-static {p1}, Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration$Builder;->access$4200(Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration;->startsAtKeyFrame:Z

    .line 1876
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration$Builder;Lcom/google/android/exoplayer2/MediaItem$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration$Builder;
    .param p2, "x1"    # Lcom/google/android/exoplayer2/MediaItem$1;

    .line 1748
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration;-><init>(Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration$Builder;)V

    return-void
.end method

.method static synthetic lambda$static$0(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/MediaItem$ClippingProperties;
    .registers 6
    .param p0, "bundle"    # Landroid/os/Bundle;

    .line 1943
    new-instance v0, Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration$Builder;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration$Builder;-><init>()V

    sget-object v1, Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration;->FIELD_START_POSITION_MS:Ljava/lang/String;

    sget-object v2, Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration;->UNSET:Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration;

    iget-wide v3, v2, Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration;->startPositionMs:J

    .line 1945
    invoke-virtual {p0, v1, v3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    .line 1944
    invoke-virtual {v0, v3, v4}, Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration$Builder;->setStartPositionMs(J)Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration;->FIELD_END_POSITION_MS:Ljava/lang/String;

    iget-wide v3, v2, Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration;->endPositionMs:J

    .line 1948
    invoke-virtual {p0, v1, v3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    .line 1947
    invoke-virtual {v0, v3, v4}, Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration$Builder;->setEndPositionMs(J)Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration;->FIELD_RELATIVE_TO_LIVE_WINDOW:Ljava/lang/String;

    iget-boolean v3, v2, Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration;->relativeToLiveWindow:Z

    .line 1950
    invoke-virtual {p0, v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 1949
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration$Builder;->setRelativeToLiveWindow(Z)Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration;->FIELD_RELATIVE_TO_DEFAULT_POSITION:Ljava/lang/String;

    iget-boolean v3, v2, Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration;->relativeToDefaultPosition:Z

    .line 1954
    invoke-virtual {p0, v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 1953
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration$Builder;->setRelativeToDefaultPosition(Z)Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration;->FIELD_STARTS_AT_KEY_FRAME:Ljava/lang/String;

    iget-boolean v2, v2, Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration;->startsAtKeyFrame:Z

    .line 1958
    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 1957
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration$Builder;->setStartsAtKeyFrame(Z)Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration$Builder;

    move-result-object v0

    .line 1960
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration$Builder;->buildClippingProperties()Lcom/google/android/exoplayer2/MediaItem$ClippingProperties;

    move-result-object v0

    .line 1943
    return-object v0
.end method


# virtual methods
.method public buildUpon()Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration$Builder;
    .registers 3

    .line 1880
    new-instance v0, Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration$Builder;-><init>(Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration;Lcom/google/android/exoplayer2/MediaItem$1;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 10
    .param p1, "obj"    # Ljava/lang/Object;

    .line 1885
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 1886
    return v0

    .line 1888
    :cond_4
    instance-of v1, p1, Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 1889
    return v2

    .line 1892
    :cond_a
    move-object v1, p1

    check-cast v1, Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration;

    .line 1894
    .local v1, "other":Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration;
    iget-wide v3, p0, Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration;->startPositionMs:J

    iget-wide v5, v1, Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration;->startPositionMs:J

    cmp-long v7, v3, v5

    if-nez v7, :cond_30

    iget-wide v3, p0, Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration;->endPositionMs:J

    iget-wide v5, v1, Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration;->endPositionMs:J

    cmp-long v7, v3, v5

    if-nez v7, :cond_30

    iget-boolean v3, p0, Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration;->relativeToLiveWindow:Z

    iget-boolean v4, v1, Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration;->relativeToLiveWindow:Z

    if-ne v3, v4, :cond_30

    iget-boolean v3, p0, Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration;->relativeToDefaultPosition:Z

    iget-boolean v4, v1, Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration;->relativeToDefaultPosition:Z

    if-ne v3, v4, :cond_30

    iget-boolean v3, p0, Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration;->startsAtKeyFrame:Z

    iget-boolean v4, v1, Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration;->startsAtKeyFrame:Z

    if-ne v3, v4, :cond_30

    goto :goto_31

    :cond_30
    const/4 v0, 0x0

    :goto_31
    return v0
.end method

.method public hashCode()I
    .registers 8

    .line 1903
    iget-wide v0, p0, Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration;->startPositionMs:J

    const/16 v2, 0x20

    ushr-long v3, v0, v2

    xor-long/2addr v0, v3

    long-to-int v1, v0

    .line 1904
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-wide v3, p0, Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration;->endPositionMs:J

    ushr-long v5, v3, v2

    xor-long/2addr v3, v5

    long-to-int v2, v3

    add-int/2addr v0, v2

    .line 1905
    .end local v1    # "result":I
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration;->relativeToLiveWindow:Z

    add-int/2addr v1, v2

    .line 1906
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration;->relativeToDefaultPosition:Z

    add-int/2addr v0, v2

    .line 1907
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration;->startsAtKeyFrame:Z

    add-int/2addr v1, v2

    .line 1908
    .end local v0    # "result":I
    .restart local v1    # "result":I
    return v1
.end method

.method public toBundle()Landroid/os/Bundle;
    .registers 8

    .line 1921
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1922
    .local v0, "bundle":Landroid/os/Bundle;
    iget-wide v1, p0, Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration;->startPositionMs:J

    sget-object v3, Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration;->UNSET:Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration;

    iget-wide v4, v3, Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration;->startPositionMs:J

    cmp-long v6, v1, v4

    if-eqz v6, :cond_14

    .line 1923
    sget-object v4, Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration;->FIELD_START_POSITION_MS:Ljava/lang/String;

    invoke-virtual {v0, v4, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1925
    :cond_14
    iget-wide v1, p0, Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration;->endPositionMs:J

    iget-wide v4, v3, Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration;->endPositionMs:J

    cmp-long v6, v1, v4

    if-eqz v6, :cond_21

    .line 1926
    sget-object v4, Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration;->FIELD_END_POSITION_MS:Ljava/lang/String;

    invoke-virtual {v0, v4, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1928
    :cond_21
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration;->relativeToLiveWindow:Z

    iget-boolean v2, v3, Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration;->relativeToLiveWindow:Z

    if-eq v1, v2, :cond_2c

    .line 1929
    sget-object v2, Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration;->FIELD_RELATIVE_TO_LIVE_WINDOW:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1931
    :cond_2c
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration;->relativeToDefaultPosition:Z

    iget-boolean v2, v3, Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration;->relativeToDefaultPosition:Z

    if-eq v1, v2, :cond_37

    .line 1932
    sget-object v2, Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration;->FIELD_RELATIVE_TO_DEFAULT_POSITION:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1934
    :cond_37
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration;->startsAtKeyFrame:Z

    iget-boolean v2, v3, Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration;->startsAtKeyFrame:Z

    if-eq v1, v2, :cond_42

    .line 1935
    sget-object v2, Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration;->FIELD_STARTS_AT_KEY_FRAME:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1937
    :cond_42
    return-object v0
.end method
