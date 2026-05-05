.class public final Lcom/google/android/exoplayer2/extractor/SeekPoint;
.super Ljava/lang/Object;
.source "SeekPoint.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final START:Lcom/google/android/exoplayer2/extractor/SeekPoint;


# instance fields
.field public final position:J

.field public final timeUs:J


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 32
    new-instance v0, Lcom/google/android/exoplayer2/extractor/SeekPoint;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2, v1, v2}, Lcom/google/android/exoplayer2/extractor/SeekPoint;-><init>(JJ)V

    sput-object v0, Lcom/google/android/exoplayer2/extractor/SeekPoint;->START:Lcom/google/android/exoplayer2/extractor/SeekPoint;

    return-void
.end method

.method public constructor <init>(JJ)V
    .registers 5
    .param p1, "timeUs"    # J
    .param p3, "position"    # J

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/SeekPoint;->timeUs:J

    .line 46
    iput-wide p3, p0, Lcom/google/android/exoplayer2/extractor/SeekPoint;->position:J

    .line 47
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 10
    .param p1, "obj"    # Ljava/lang/Object;

    .line 56
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 57
    return v0

    .line 59
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_28

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_28

    .line 62
    :cond_12
    move-object v2, p1

    check-cast v2, Lcom/google/android/exoplayer2/extractor/SeekPoint;

    .line 63
    .local v2, "other":Lcom/google/android/exoplayer2/extractor/SeekPoint;
    iget-wide v3, p0, Lcom/google/android/exoplayer2/extractor/SeekPoint;->timeUs:J

    iget-wide v5, v2, Lcom/google/android/exoplayer2/extractor/SeekPoint;->timeUs:J

    cmp-long v7, v3, v5

    if-nez v7, :cond_26

    iget-wide v3, p0, Lcom/google/android/exoplayer2/extractor/SeekPoint;->position:J

    iget-wide v5, v2, Lcom/google/android/exoplayer2/extractor/SeekPoint;->position:J

    cmp-long v7, v3, v5

    if-nez v7, :cond_26

    goto :goto_27

    :cond_26
    const/4 v0, 0x0

    :goto_27
    return v0

    .line 60
    .end local v2    # "other":Lcom/google/android/exoplayer2/extractor/SeekPoint;
    :cond_28
    :goto_28
    return v1
.end method

.method public hashCode()I
    .registers 5

    .line 68
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/SeekPoint;->timeUs:J

    long-to-int v1, v0

    .line 69
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-wide v2, p0, Lcom/google/android/exoplayer2/extractor/SeekPoint;->position:J

    long-to-int v3, v2

    add-int/2addr v0, v3

    .line 70
    .end local v1    # "result":I
    .local v0, "result":I
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[timeUs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/exoplayer2/extractor/SeekPoint;->timeUs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/exoplayer2/extractor/SeekPoint;->position:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
