.class final Lcom/google/android/exoplayer2/SimpleBasePlayer$PlaylistTimeline;
.super Lcom/google/android/exoplayer2/Timeline;
.source "SimpleBasePlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/SimpleBasePlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PlaylistTimeline"
.end annotation


# instance fields
.field private final firstPeriodIndexByWindowIndex:[I

.field private final periodIndexByUid:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final playlist:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;",
            ">;"
        }
    .end annotation
.end field

.field private final windowIndexByPeriodIndex:[I


# direct methods
.method public constructor <init>(Lcom/google/common/collect/ImmutableList;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableList<",
            "Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;",
            ">;)V"
        }
    .end annotation

    .line 1111
    .local p1, "playlist":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;>;"
    invoke-direct {p0}, Lcom/google/android/exoplayer2/Timeline;-><init>()V

    .line 1112
    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v0

    .line 1113
    .local v0, "mediaItemCount":I
    iput-object p1, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$PlaylistTimeline;->playlist:Lcom/google/common/collect/ImmutableList;

    .line 1114
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$PlaylistTimeline;->firstPeriodIndexByWindowIndex:[I

    .line 1115
    const/4 v1, 0x0

    .line 1116
    .local v1, "periodCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_f
    if-ge v2, v0, :cond_23

    .line 1117
    invoke-virtual {p1, v2}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;

    .line 1118
    .local v3, "mediaItemData":Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;
    iget-object v4, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$PlaylistTimeline;->firstPeriodIndexByWindowIndex:[I

    aput v1, v4, v2

    .line 1119
    invoke-static {v3}, Lcom/google/android/exoplayer2/SimpleBasePlayer$PlaylistTimeline;->getPeriodCountInMediaItem(Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;)I

    move-result v4

    add-int/2addr v1, v4

    .line 1116
    .end local v3    # "mediaItemData":Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 1121
    .end local v2    # "i":I
    :cond_23
    new-array v2, v1, [I

    iput-object v2, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$PlaylistTimeline;->windowIndexByPeriodIndex:[I

    .line 1122
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$PlaylistTimeline;->periodIndexByUid:Ljava/util/HashMap;

    .line 1123
    const/4 v2, 0x0

    .line 1124
    .local v2, "periodIndex":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_30
    if-ge v3, v0, :cond_58

    .line 1125
    invoke-virtual {p1, v3}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;

    .line 1126
    .local v4, "mediaItemData":Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_39
    invoke-static {v4}, Lcom/google/android/exoplayer2/SimpleBasePlayer$PlaylistTimeline;->getPeriodCountInMediaItem(Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;)I

    move-result v6

    if-ge v5, v6, :cond_55

    .line 1127
    iget-object v6, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$PlaylistTimeline;->periodIndexByUid:Ljava/util/HashMap;

    # invokes: Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->getPeriodUid(I)Ljava/lang/Object;
    invoke-static {v4, v5}, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->access$4300(Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;I)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1128
    iget-object v6, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$PlaylistTimeline;->windowIndexByPeriodIndex:[I

    aput v3, v6, v2

    .line 1129
    add-int/lit8 v2, v2, 0x1

    .line 1126
    add-int/lit8 v5, v5, 0x1

    goto :goto_39

    .line 1124
    .end local v4    # "mediaItemData":Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;
    .end local v5    # "j":I
    :cond_55
    add-int/lit8 v3, v3, 0x1

    goto :goto_30

    .line 1132
    .end local v3    # "i":I
    :cond_58
    return-void
.end method

.method private static getPeriodCountInMediaItem(Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;)I
    .registers 2
    .param p0, "mediaItemData"    # Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;

    .line 1202
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->periods:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_10

    :cond_a
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->periods:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v0

    :goto_10
    return v0
.end method


# virtual methods
.method public getFirstWindowIndex(Z)I
    .registers 3
    .param p1, "shuffleModeEnabled"    # Z

    .line 1160
    invoke-super {p0, p1}, Lcom/google/android/exoplayer2/Timeline;->getFirstWindowIndex(Z)I

    move-result v0

    return v0
.end method

.method public getIndexOfPeriod(Ljava/lang/Object;)I
    .registers 4
    .param p1, "uid"    # Ljava/lang/Object;

    .line 1190
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$PlaylistTimeline;->periodIndexByUid:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1191
    .local v0, "index":Ljava/lang/Integer;
    if-nez v0, :cond_c

    const/4 v1, -0x1

    goto :goto_10

    :cond_c
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_10
    return v1
.end method

.method public getLastWindowIndex(Z)I
    .registers 3
    .param p1, "shuffleModeEnabled"    # Z

    .line 1154
    invoke-super {p0, p1}, Lcom/google/android/exoplayer2/Timeline;->getLastWindowIndex(Z)I

    move-result v0

    return v0
.end method

.method public getNextWindowIndex(IIZ)I
    .registers 5
    .param p1, "windowIndex"    # I
    .param p2, "repeatMode"    # I
    .param p3, "shuffleModeEnabled"    # Z

    .line 1142
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/Timeline;->getNextWindowIndex(IIZ)I

    move-result v0

    return v0
.end method

.method public getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;Z)Lcom/google/android/exoplayer2/Timeline$Period;
    .registers 7
    .param p1, "periodIndex"    # I
    .param p2, "period"    # Lcom/google/android/exoplayer2/Timeline$Period;
    .param p3, "setIds"    # Z

    .line 1183
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$PlaylistTimeline;->windowIndexByPeriodIndex:[I

    aget v0, v0, p1

    .line 1184
    .local v0, "windowIndex":I
    iget-object v1, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$PlaylistTimeline;->firstPeriodIndexByWindowIndex:[I

    aget v1, v1, v0

    sub-int v1, p1, v1

    .line 1185
    .local v1, "periodIndexInWindow":I
    iget-object v2, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$PlaylistTimeline;->playlist:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v2, v0}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;

    # invokes: Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->getPeriod(IILcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;
    invoke-static {v2, v0, v1, p2}, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->access$4500(Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;IILcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object v2

    return-object v2
.end method

.method public getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;
    .registers 5
    .param p1, "periodUid"    # Ljava/lang/Object;
    .param p2, "period"    # Lcom/google/android/exoplayer2/Timeline$Period;

    .line 1177
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$PlaylistTimeline;->periodIndexByUid:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1178
    .local v0, "periodIndex":I
    const/4 v1, 0x1

    invoke-virtual {p0, v0, p2, v1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$PlaylistTimeline;->getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;Z)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object v1

    return-object v1
.end method

.method public getPeriodCount()I
    .registers 2

    .line 1172
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$PlaylistTimeline;->windowIndexByPeriodIndex:[I

    array-length v0, v0

    return v0
.end method

.method public getPreviousWindowIndex(IIZ)I
    .registers 5
    .param p1, "windowIndex"    # I
    .param p2, "repeatMode"    # I
    .param p3, "shuffleModeEnabled"    # Z

    .line 1148
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/Timeline;->getPreviousWindowIndex(IIZ)I

    move-result v0

    return v0
.end method

.method public getUidOfPeriod(I)Ljava/lang/Object;
    .registers 5
    .param p1, "periodIndex"    # I

    .line 1196
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$PlaylistTimeline;->windowIndexByPeriodIndex:[I

    aget v0, v0, p1

    .line 1197
    .local v0, "windowIndex":I
    iget-object v1, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$PlaylistTimeline;->firstPeriodIndexByWindowIndex:[I

    aget v1, v1, v0

    sub-int v1, p1, v1

    .line 1198
    .local v1, "periodIndexInWindow":I
    iget-object v2, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$PlaylistTimeline;->playlist:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v2, v0}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;

    # invokes: Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->getPeriodUid(I)Ljava/lang/Object;
    invoke-static {v2, v1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->access$4300(Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;I)Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method

.method public getWindow(ILcom/google/android/exoplayer2/Timeline$Window;J)Lcom/google/android/exoplayer2/Timeline$Window;
    .registers 7
    .param p1, "windowIndex"    # I
    .param p2, "window"    # Lcom/google/android/exoplayer2/Timeline$Window;
    .param p3, "defaultPositionProjectionUs"    # J

    .line 1165
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$PlaylistTimeline;->playlist:Lcom/google/common/collect/ImmutableList;

    .line 1166
    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;

    iget-object v1, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$PlaylistTimeline;->firstPeriodIndexByWindowIndex:[I

    aget v1, v1, p1

    .line 1167
    # invokes: Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;)Lcom/google/android/exoplayer2/Timeline$Window;
    invoke-static {v0, v1, p2}, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->access$4400(Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;ILcom/google/android/exoplayer2/Timeline$Window;)Lcom/google/android/exoplayer2/Timeline$Window;

    move-result-object v0

    .line 1165
    return-object v0
.end method

.method public getWindowCount()I
    .registers 2

    .line 1136
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$PlaylistTimeline;->playlist:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v0

    return v0
.end method
