.class final Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;
.super Ljava/lang/Object;
.source "DashMediaPeriod.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TrackGroupInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo$TrackGroupCategory;
    }
.end annotation


# static fields
.field private static final CATEGORY_EMBEDDED:I = 0x1

.field private static final CATEGORY_MANIFEST_EVENTS:I = 0x2

.field private static final CATEGORY_PRIMARY:I


# instance fields
.field public final adaptationSetIndices:[I

.field public final embeddedClosedCaptionTrackGroupIndex:I

.field public final embeddedEventMessageTrackGroupIndex:I

.field public final eventStreamGroupIndex:I

.field public final primaryTrackGroupIndex:I

.field public final trackGroupCategory:I

.field public final trackType:I


# direct methods
.method private constructor <init>(II[IIIII)V
    .registers 8
    .param p1, "trackType"    # I
    .param p2, "trackGroupCategory"    # I
    .param p3, "adaptationSetIndices"    # [I
    .param p4, "primaryTrackGroupIndex"    # I
    .param p5, "embeddedEventMessageTrackGroupIndex"    # I
    .param p6, "embeddedClosedCaptionTrackGroupIndex"    # I
    .param p7, "eventStreamGroupIndex"    # I

    .line 1019
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1020
    iput p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;->trackType:I

    .line 1021
    iput-object p3, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;->adaptationSetIndices:[I

    .line 1022
    iput p2, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;->trackGroupCategory:I

    .line 1023
    iput p4, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;->primaryTrackGroupIndex:I

    .line 1024
    iput p5, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;->embeddedEventMessageTrackGroupIndex:I

    .line 1025
    iput p6, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;->embeddedClosedCaptionTrackGroupIndex:I

    .line 1026
    iput p7, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;->eventStreamGroupIndex:I

    .line 1027
    return-void
.end method

.method public static embeddedClosedCaptionTrack([II)Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;
    .registers 11
    .param p0, "adaptationSetIndices"    # [I
    .param p1, "primaryTrackGroupIndex"    # I

    .line 991
    new-instance v8, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;

    const/4 v1, 0x3

    const/4 v2, 0x1

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, -0x1

    move-object v0, v8

    move-object v3, p0

    move v4, p1

    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;-><init>(II[IIIII)V

    return-object v8
.end method

.method public static embeddedEmsgTrack([II)Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;
    .registers 11
    .param p0, "adaptationSetIndices"    # [I
    .param p1, "primaryTrackGroupIndex"    # I

    .line 979
    new-instance v8, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;

    const/4 v1, 0x5

    const/4 v2, 0x1

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, -0x1

    move-object v0, v8

    move-object v3, p0

    move v4, p1

    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;-><init>(II[IIIII)V

    return-object v8
.end method

.method public static mpdEventTrack(I)Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;
    .registers 10
    .param p0, "eventStreamIndex"    # I

    .line 1002
    new-instance v8, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;

    const/4 v1, 0x5

    const/4 v2, 0x2

    const/4 v0, 0x0

    new-array v3, v0, [I

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v6, -0x1

    move-object v0, v8

    move v7, p0

    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;-><init>(II[IIIII)V

    return-object v8
.end method

.method public static primaryTrack(I[IIII)Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;
    .registers 14
    .param p0, "trackType"    # I
    .param p1, "adaptationSetIndices"    # [I
    .param p2, "primaryTrackGroupIndex"    # I
    .param p3, "embeddedEventMessageTrackGroupIndex"    # I
    .param p4, "embeddedClosedCaptionTrackGroupIndex"    # I

    .line 967
    new-instance v8, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;

    const/4 v2, 0x0

    const/4 v7, -0x1

    move-object v0, v8

    move v1, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;-><init>(II[IIIII)V

    return-object v8
.end method
