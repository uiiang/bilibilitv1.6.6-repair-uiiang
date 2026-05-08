.class public final Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;
.super Ljava/lang/Object;
.source "MediaItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private maxOffsetMs:J

.field private maxPlaybackSpeed:F

.field private minOffsetMs:J

.field private minPlaybackSpeed:F

.field private targetOffsetMs:J


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 1251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1252
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;->targetOffsetMs:J

    .line 1253
    iput-wide v0, p0, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;->minOffsetMs:J

    .line 1254
    iput-wide v0, p0, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;->maxOffsetMs:J

    .line 1255
    const v0, -0x800001

    iput v0, p0, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;->minPlaybackSpeed:F

    .line 1256
    iput v0, p0, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;->maxPlaybackSpeed:F

    .line 1257
    return-void
.end method

.method private constructor <init>(Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;)V
    .registers 4
    .param p1, "liveConfiguration"    # Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

    .line 1259
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1260
    iget-wide v0, p1, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->targetOffsetMs:J

    iput-wide v0, p0, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;->targetOffsetMs:J

    .line 1261
    iget-wide v0, p1, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->minOffsetMs:J

    iput-wide v0, p0, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;->minOffsetMs:J

    .line 1262
    iget-wide v0, p1, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->maxOffsetMs:J

    iput-wide v0, p0, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;->maxOffsetMs:J

    .line 1263
    iget v0, p1, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->minPlaybackSpeed:F

    iput v0, p0, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;->minPlaybackSpeed:F

    .line 1264
    iget v0, p1, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->maxPlaybackSpeed:F

    iput v0, p0, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;->maxPlaybackSpeed:F

    .line 1265
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;Lcom/google/android/exoplayer2/MediaItem$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;
    .param p2, "x1"    # Lcom/google/android/exoplayer2/MediaItem$1;

    .line 1243
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;-><init>(Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;)J
    .registers 3
    .param p0, "x0"    # Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;

    .line 1243
    iget-wide v0, p0, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;->targetOffsetMs:J

    return-wide v0
.end method

.method static synthetic access$2100(Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;)J
    .registers 3
    .param p0, "x0"    # Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;

    .line 1243
    iget-wide v0, p0, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;->minOffsetMs:J

    return-wide v0
.end method

.method static synthetic access$2200(Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;)J
    .registers 3
    .param p0, "x0"    # Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;

    .line 1243
    iget-wide v0, p0, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;->maxOffsetMs:J

    return-wide v0
.end method

.method static synthetic access$2300(Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;)F
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;

    .line 1243
    iget v0, p0, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;->minPlaybackSpeed:F

    return v0
.end method

.method static synthetic access$2400(Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;)F
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;

    .line 1243
    iget v0, p0, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;->maxPlaybackSpeed:F

    return v0
.end method


# virtual methods
.method public build()Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;
    .registers 3

    .line 1330
    new-instance v0, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;-><init>(Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;Lcom/google/android/exoplayer2/MediaItem$1;)V

    return-object v0
.end method

.method public setMaxOffsetMs(J)Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;
    .registers 3
    .param p1, "maxOffsetMs"    # J

    .line 1302
    iput-wide p1, p0, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;->maxOffsetMs:J

    .line 1303
    return-object p0
.end method

.method public setMaxPlaybackSpeed(F)Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;
    .registers 2
    .param p1, "maxPlaybackSpeed"    # F

    .line 1324
    iput p1, p0, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;->maxPlaybackSpeed:F

    .line 1325
    return-object p0
.end method

.method public setMinOffsetMs(J)Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;
    .registers 3
    .param p1, "minOffsetMs"    # J

    .line 1289
    iput-wide p1, p0, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;->minOffsetMs:J

    .line 1290
    return-object p0
.end method

.method public setMinPlaybackSpeed(F)Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;
    .registers 2
    .param p1, "minPlaybackSpeed"    # F

    .line 1313
    iput p1, p0, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;->minPlaybackSpeed:F

    .line 1314
    return-object p0
.end method

.method public setTargetOffsetMs(J)Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;
    .registers 3
    .param p1, "targetOffsetMs"    # J

    .line 1276
    iput-wide p1, p0, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;->targetOffsetMs:J

    .line 1277
    return-object p0
.end method
