.class public final Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;
.super Ljava/lang/Object;
.source "BaseUrl.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final DEFAULT_DVB_PRIORITY:I = 0x1

.field public static final DEFAULT_WEIGHT:I = 0x1

.field public static final PRIORITY_UNSET:I = -0x80000000


# instance fields
.field public final priority:I

.field public final serviceLocation:Ljava/lang/String;

.field public final url:Ljava/lang/String;

.field public final weight:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "url"    # Ljava/lang/String;

    .line 53
    const/high16 v0, -0x80000000

    const/4 v1, 0x1

    invoke-direct {p0, p1, p1, v0, v1}, Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    .line 54
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;II)V
    .registers 5
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "serviceLocation"    # Ljava/lang/String;
    .param p3, "priority"    # I
    .param p4, "weight"    # I

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;->url:Ljava/lang/String;

    .line 59
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;->serviceLocation:Ljava/lang/String;

    .line 60
    iput p3, p0, Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;->priority:I

    .line 61
    iput p4, p0, Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;->weight:I

    .line 62
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 66
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 67
    return v0

    .line 69
    :cond_4
    instance-of v1, p1, Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 70
    return v2

    .line 72
    :cond_a
    move-object v1, p1

    check-cast v1, Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;

    .line 73
    .local v1, "baseUrl":Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;
    iget v3, p0, Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;->priority:I

    iget v4, v1, Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;->priority:I

    if-ne v3, v4, :cond_2e

    iget v3, p0, Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;->weight:I

    iget v4, v1, Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;->weight:I

    if-ne v3, v4, :cond_2e

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;->url:Ljava/lang/String;

    iget-object v4, v1, Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;->url:Ljava/lang/String;

    .line 75
    invoke-static {v3, v4}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2e

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;->serviceLocation:Ljava/lang/String;

    iget-object v4, v1, Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;->serviceLocation:Ljava/lang/String;

    .line 76
    invoke-static {v3, v4}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2e

    goto :goto_2f

    :cond_2e
    const/4 v0, 0x0

    .line 73
    :goto_2f
    return v0
.end method

.method public hashCode()I
    .registers 4

    .line 81
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;->url:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;->serviceLocation:Ljava/lang/String;

    aput-object v2, v0, v1

    iget v1, p0, Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;->priority:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;->weight:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
