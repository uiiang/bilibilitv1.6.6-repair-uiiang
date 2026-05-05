.class public final Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$UdtaInfo;
.super Ljava/lang/Object;
.source "AtomParsers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UdtaInfo"
.end annotation


# instance fields
.field public final metaMetadata:Lcom/google/android/exoplayer2/metadata/Metadata;

.field public final smtaMetadata:Lcom/google/android/exoplayer2/metadata/Metadata;

.field public final xyzMetadata:Lcom/google/android/exoplayer2/metadata/Metadata;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/metadata/Metadata;Lcom/google/android/exoplayer2/metadata/Metadata;Lcom/google/android/exoplayer2/metadata/Metadata;)V
    .registers 4
    .param p1, "metaMetadata"    # Lcom/google/android/exoplayer2/metadata/Metadata;
    .param p2, "smtaMetadata"    # Lcom/google/android/exoplayer2/metadata/Metadata;
    .param p3, "xyzMetadata"    # Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$UdtaInfo;->metaMetadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 86
    iput-object p2, p0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$UdtaInfo;->smtaMetadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 87
    iput-object p3, p0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$UdtaInfo;->xyzMetadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 88
    return-void
.end method
