.class Lcom/google/android/exoplayer2/extractor/mp4/PsshAtomUtil$PsshAtom;
.super Ljava/lang/Object;
.source "PsshAtomUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/extractor/mp4/PsshAtomUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PsshAtom"
.end annotation


# instance fields
.field private final schemeData:[B

.field private final uuid:Ljava/util/UUID;

.field private final version:I


# direct methods
.method public constructor <init>(Ljava/util/UUID;I[B)V
    .registers 4
    .param p1, "uuid"    # Ljava/util/UUID;
    .param p2, "version"    # I
    .param p3, "schemeData"    # [B

    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 208
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/PsshAtomUtil$PsshAtom;->uuid:Ljava/util/UUID;

    .line 209
    iput p2, p0, Lcom/google/android/exoplayer2/extractor/mp4/PsshAtomUtil$PsshAtom;->version:I

    .line 210
    iput-object p3, p0, Lcom/google/android/exoplayer2/extractor/mp4/PsshAtomUtil$PsshAtom;->schemeData:[B

    .line 211
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/exoplayer2/extractor/mp4/PsshAtomUtil$PsshAtom;)Ljava/util/UUID;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/extractor/mp4/PsshAtomUtil$PsshAtom;

    .line 201
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/PsshAtomUtil$PsshAtom;->uuid:Ljava/util/UUID;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/exoplayer2/extractor/mp4/PsshAtomUtil$PsshAtom;)I
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/extractor/mp4/PsshAtomUtil$PsshAtom;

    .line 201
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/PsshAtomUtil$PsshAtom;->version:I

    return v0
.end method

.method static synthetic access$200(Lcom/google/android/exoplayer2/extractor/mp4/PsshAtomUtil$PsshAtom;)[B
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/extractor/mp4/PsshAtomUtil$PsshAtom;

    .line 201
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/PsshAtomUtil$PsshAtom;->schemeData:[B

    return-object v0
.end method
