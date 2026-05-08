.class final Lcom/google/android/exoplayer2/text/dvb/DvbParser$PageRegion;
.super Ljava/lang/Object;
.source "DvbParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/text/dvb/DvbParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PageRegion"
.end annotation


# instance fields
.field public final horizontalAddress:I

.field public final verticalAddress:I


# direct methods
.method public constructor <init>(II)V
    .registers 3
    .param p1, "horizontalAddress"    # I
    .param p2, "verticalAddress"    # I

    .line 1011
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1012
    iput p1, p0, Lcom/google/android/exoplayer2/text/dvb/DvbParser$PageRegion;->horizontalAddress:I

    .line 1013
    iput p2, p0, Lcom/google/android/exoplayer2/text/dvb/DvbParser$PageRegion;->verticalAddress:I

    .line 1014
    return-void
.end method
