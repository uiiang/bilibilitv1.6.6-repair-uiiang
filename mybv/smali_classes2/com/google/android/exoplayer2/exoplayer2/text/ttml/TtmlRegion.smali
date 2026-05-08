.class final Lcom/google/android/exoplayer2/text/ttml/TtmlRegion;
.super Ljava/lang/Object;
.source "TtmlRegion.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public final height:F

.field public final id:Ljava/lang/String;

.field public final line:F

.field public final lineAnchor:I

.field public final lineType:I

.field public final position:F

.field public final textSize:F

.field public final textSizeType:I

.field public final verticalType:I

.field public final width:F


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 13
    .param p1, "id"    # Ljava/lang/String;

    .line 43
    const v2, -0x800001

    const v3, -0x800001

    const/high16 v4, -0x80000000

    const/high16 v5, -0x80000000

    const v6, -0x800001

    const v7, -0x800001

    const/high16 v8, -0x80000000

    const v9, -0x800001

    const/high16 v10, -0x80000000

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v10}, Lcom/google/android/exoplayer2/text/ttml/TtmlRegion;-><init>(Ljava/lang/String;FFIIFFIFI)V

    .line 54
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;FFIIFFIFI)V
    .registers 11
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "position"    # F
    .param p3, "line"    # F
    .param p4, "lineType"    # I
    .param p5, "lineAnchor"    # I
    .param p6, "width"    # F
    .param p7, "height"    # F
    .param p8, "textSizeType"    # I
    .param p9, "textSize"    # F
    .param p10, "verticalType"    # I

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlRegion;->id:Ljava/lang/String;

    .line 68
    iput p2, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlRegion;->position:F

    .line 69
    iput p3, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlRegion;->line:F

    .line 70
    iput p4, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlRegion;->lineType:I

    .line 71
    iput p5, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlRegion;->lineAnchor:I

    .line 72
    iput p6, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlRegion;->width:F

    .line 73
    iput p7, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlRegion;->height:F

    .line 74
    iput p8, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlRegion;->textSizeType:I

    .line 75
    iput p9, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlRegion;->textSize:F

    .line 76
    iput p10, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlRegion;->verticalType:I

    .line 77
    return-void
.end method
