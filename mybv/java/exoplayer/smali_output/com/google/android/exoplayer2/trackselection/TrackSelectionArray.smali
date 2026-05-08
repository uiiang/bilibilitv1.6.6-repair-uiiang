.class public final Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;
.super Ljava/lang/Object;
.source "TrackSelectionArray.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private hashCode:I

.field public final length:I

.field private final trackSelections:[Lcom/google/android/exoplayer2/trackselection/TrackSelection;


# direct methods
.method public varargs constructor <init>([Lcom/google/android/exoplayer2/trackselection/TrackSelection;)V
    .registers 3
    .param p1, "trackSelections"    # [Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;->trackSelections:[Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    .line 46
    array-length v0, p1

    iput v0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;->length:I

    .line 47
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 77
    if-ne p0, p1, :cond_4

    .line 78
    const/4 v0, 0x1

    return v0

    .line 80
    :cond_4
    if-eqz p1, :cond_1d

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_11

    goto :goto_1d

    .line 83
    :cond_11
    move-object v0, p1

    check-cast v0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;

    .line 84
    .local v0, "other":Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;
    iget-object v1, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;->trackSelections:[Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    iget-object v2, v0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;->trackSelections:[Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 81
    .end local v0    # "other":Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;
    :cond_1d
    :goto_1d
    const/4 v0, 0x0

    return v0
.end method

.method public get(I)Lcom/google/android/exoplayer2/trackselection/TrackSelection;
    .registers 3
    .param p1, "index"    # I

    .line 57
    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;->trackSelections:[Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getAll()[Lcom/google/android/exoplayer2/trackselection/TrackSelection;
    .registers 2

    .line 62
    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;->trackSelections:[Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    invoke-virtual {v0}, [Lcom/google/android/exoplayer2/trackselection/TrackSelection;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    .line 67
    iget v0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;->hashCode:I

    if-nez v0, :cond_11

    .line 68
    const/16 v0, 0x11

    .line 69
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;->trackSelections:[Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 70
    .end local v0    # "result":I
    .local v1, "result":I
    iput v1, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;->hashCode:I

    .line 72
    .end local v1    # "result":I
    :cond_11
    iget v0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;->hashCode:I

    return v0
.end method
