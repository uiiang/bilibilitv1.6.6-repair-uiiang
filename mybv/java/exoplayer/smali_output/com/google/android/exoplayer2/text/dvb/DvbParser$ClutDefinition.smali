.class final Lcom/google/android/exoplayer2/text/dvb/DvbParser$ClutDefinition;
.super Ljava/lang/Object;
.source "DvbParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/text/dvb/DvbParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ClutDefinition"
.end annotation


# instance fields
.field public final clutEntries2Bit:[I

.field public final clutEntries4Bit:[I

.field public final clutEntries8Bit:[I

.field public final id:I


# direct methods
.method public constructor <init>(I[I[I[I)V
    .registers 5
    .param p1, "id"    # I
    .param p2, "clutEntries2Bit"    # [I
    .param p3, "clutEntries4Bit"    # [I
    .param p4, "clutEntries8bit"    # [I

    .line 1112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1113
    iput p1, p0, Lcom/google/android/exoplayer2/text/dvb/DvbParser$ClutDefinition;->id:I

    .line 1114
    iput-object p2, p0, Lcom/google/android/exoplayer2/text/dvb/DvbParser$ClutDefinition;->clutEntries2Bit:[I

    .line 1115
    iput-object p3, p0, Lcom/google/android/exoplayer2/text/dvb/DvbParser$ClutDefinition;->clutEntries4Bit:[I

    .line 1116
    iput-object p4, p0, Lcom/google/android/exoplayer2/text/dvb/DvbParser$ClutDefinition;->clutEntries8Bit:[I

    .line 1117
    return-void
.end method
