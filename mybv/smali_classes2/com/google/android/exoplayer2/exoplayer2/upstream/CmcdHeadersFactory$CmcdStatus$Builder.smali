.class public final Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdStatus$Builder;
.super Ljava/lang/Object;
.source "CmcdHeadersFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private customData:Ljava/lang/String;

.field private maximumRequestedThroughputKbps:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 718
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 719
    const v0, -0x7fffffff

    iput v0, p0, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdStatus$Builder;->maximumRequestedThroughputKbps:I

    .line 720
    return-void
.end method

.method static synthetic access$1700(Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdStatus$Builder;)I
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdStatus$Builder;

    .line 713
    iget v0, p0, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdStatus$Builder;->maximumRequestedThroughputKbps:I

    return v0
.end method

.method static synthetic access$1800(Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdStatus$Builder;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdStatus$Builder;

    .line 713
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdStatus$Builder;->customData:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public build()Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdStatus;
    .registers 3

    .line 751
    new-instance v0, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdStatus;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdStatus;-><init>(Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdStatus$Builder;Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$1;)V

    return-object v0
.end method

.method public setCustomData(Ljava/lang/String;)Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdStatus$Builder;
    .registers 2
    .param p1, "customData"    # Ljava/lang/String;

    .line 746
    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdStatus$Builder;->customData:Ljava/lang/String;

    .line 747
    return-object p0
.end method

.method public setMaximumRequestedThroughputKbps(I)Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdStatus$Builder;
    .registers 4
    .param p1, "maximumRequestedThroughputKbps"    # I

    .line 731
    const v0, -0x7fffffff

    if-eq p1, v0, :cond_a

    if-ltz p1, :cond_8

    goto :goto_a

    :cond_8
    const/4 v1, 0x0

    goto :goto_b

    :cond_a
    :goto_a
    const/4 v1, 0x1

    :goto_b
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 735
    nop

    .line 736
    if-ne p1, v0, :cond_13

    .line 737
    move v0, p1

    goto :goto_19

    .line 738
    :cond_13
    add-int/lit8 v0, p1, 0x32

    div-int/lit8 v0, v0, 0x64

    mul-int/lit8 v0, v0, 0x64

    :goto_19
    iput v0, p0, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdStatus$Builder;->maximumRequestedThroughputKbps:I

    .line 740
    return-object p0
.end method
