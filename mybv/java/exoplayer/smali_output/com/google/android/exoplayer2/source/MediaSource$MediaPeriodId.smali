.class public final Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
.super Lcom/google/android/exoplayer2/source/MediaPeriodId;
.source "MediaSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/MediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MediaPeriodId"
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/MediaPeriodId;)V
    .registers 2
    .param p1, "mediaPeriodId"    # Lcom/google/android/exoplayer2/source/MediaPeriodId;

    .line 172
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/MediaPeriodId;-><init>(Lcom/google/android/exoplayer2/source/MediaPeriodId;)V

    .line 173
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .registers 2
    .param p1, "periodUid"    # Ljava/lang/Object;

    .line 143
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/MediaPeriodId;-><init>(Ljava/lang/Object;)V

    .line 144
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;IIJ)V
    .registers 6
    .param p1, "periodUid"    # Ljava/lang/Object;
    .param p2, "adGroupIndex"    # I
    .param p3, "adIndexInAdGroup"    # I
    .param p4, "windowSequenceNumber"    # J

    .line 167
    invoke-direct/range {p0 .. p5}, Lcom/google/android/exoplayer2/source/MediaPeriodId;-><init>(Ljava/lang/Object;IIJ)V

    .line 168
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;J)V
    .registers 4
    .param p1, "periodUid"    # Ljava/lang/Object;
    .param p2, "windowSequenceNumber"    # J

    .line 150
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/source/MediaPeriodId;-><init>(Ljava/lang/Object;J)V

    .line 151
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;JI)V
    .registers 5
    .param p1, "periodUid"    # Ljava/lang/Object;
    .param p2, "windowSequenceNumber"    # J
    .param p4, "nextAdGroupIndex"    # I

    .line 158
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/source/MediaPeriodId;-><init>(Ljava/lang/Object;JI)V

    .line 159
    return-void
.end method


# virtual methods
.method public bridge synthetic copyWithPeriodUid(Ljava/lang/Object;)Lcom/google/android/exoplayer2/source/MediaPeriodId;
    .registers 2

    .line 139
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->copyWithPeriodUid(Ljava/lang/Object;)Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    move-result-object p1

    return-object p1
.end method

.method public copyWithPeriodUid(Ljava/lang/Object;)Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .registers 4
    .param p1, "newPeriodUid"    # Ljava/lang/Object;

    .line 178
    new-instance v0, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    invoke-super {p0, p1}, Lcom/google/android/exoplayer2/source/MediaPeriodId;->copyWithPeriodUid(Ljava/lang/Object;)Lcom/google/android/exoplayer2/source/MediaPeriodId;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;-><init>(Lcom/google/android/exoplayer2/source/MediaPeriodId;)V

    return-object v0
.end method

.method public bridge synthetic copyWithWindowSequenceNumber(J)Lcom/google/android/exoplayer2/source/MediaPeriodId;
    .registers 3

    .line 139
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->copyWithWindowSequenceNumber(J)Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    move-result-object p1

    return-object p1
.end method

.method public copyWithWindowSequenceNumber(J)Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .registers 5
    .param p1, "windowSequenceNumber"    # J

    .line 187
    new-instance v0, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    invoke-super {p0, p1, p2}, Lcom/google/android/exoplayer2/source/MediaPeriodId;->copyWithWindowSequenceNumber(J)Lcom/google/android/exoplayer2/source/MediaPeriodId;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;-><init>(Lcom/google/android/exoplayer2/source/MediaPeriodId;)V

    return-object v0
.end method
