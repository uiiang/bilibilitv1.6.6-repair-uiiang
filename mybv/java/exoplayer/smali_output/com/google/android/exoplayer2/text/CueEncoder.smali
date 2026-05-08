.class public final Lcom/google/android/exoplayer2/text/CueEncoder;
.super Ljava/lang/Object;
.source "CueEncoder.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public encode(Ljava/util/List;)[B
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/text/Cue;",
            ">;)[B"
        }
    .end annotation

    .line 42
    .local p1, "cues":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/text/Cue;>;"
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/BundleableUtil;->toBundleArrayList(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v0

    .line 43
    .local v0, "bundledCues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 44
    .local v1, "allCuesBundle":Landroid/os/Bundle;
    const-string v2, "c"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 45
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 46
    .local v2, "parcel":Landroid/os/Parcel;
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 47
    invoke-virtual {v2}, Landroid/os/Parcel;->marshall()[B

    move-result-object v3

    .line 48
    .local v3, "bytes":[B
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 50
    return-object v3
.end method
