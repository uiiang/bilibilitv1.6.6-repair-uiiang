.class final Lcom/google/android/exoplayer2/extractor/avi/ListChunk;
.super Ljava/lang/Object;
.source "ListChunk.java"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/avi/AviChunk;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public final children:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Lcom/google/android/exoplayer2/extractor/avi/AviChunk;",
            ">;"
        }
    .end annotation
.end field

.field private final type:I


# direct methods
.method private constructor <init>(ILcom/google/common/collect/ImmutableList;)V
    .registers 3
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/common/collect/ImmutableList<",
            "Lcom/google/android/exoplayer2/extractor/avi/AviChunk;",
            ">;)V"
        }
    .end annotation

    .line 65
    .local p2, "children":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Lcom/google/android/exoplayer2/extractor/avi/AviChunk;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/avi/ListChunk;->type:I

    .line 67
    iput-object p2, p0, Lcom/google/android/exoplayer2/extractor/avi/ListChunk;->children:Lcom/google/common/collect/ImmutableList;

    .line 68
    return-void
.end method

.method private static createBox(IILcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/extractor/avi/AviChunk;
    .registers 4
    .param p0, "chunkType"    # I
    .param p1, "trackType"    # I
    .param p2, "body"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 89
    sparse-switch p0, :sswitch_data_1a

    .line 99
    const/4 v0, 0x0

    return-object v0

    .line 97
    :sswitch_5
    invoke-static {p2}, Lcom/google/android/exoplayer2/extractor/avi/StreamNameChunk;->parseFrom(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/extractor/avi/StreamNameChunk;

    move-result-object v0

    return-object v0

    .line 93
    :sswitch_a
    invoke-static {p2}, Lcom/google/android/exoplayer2/extractor/avi/AviStreamHeaderChunk;->parseFrom(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/extractor/avi/AviStreamHeaderChunk;

    move-result-object v0

    return-object v0

    .line 91
    :sswitch_f
    invoke-static {p2}, Lcom/google/android/exoplayer2/extractor/avi/AviMainHeaderChunk;->parseFrom(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/extractor/avi/AviMainHeaderChunk;

    move-result-object v0

    return-object v0

    .line 95
    :sswitch_14
    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/extractor/avi/StreamFormatChunk;->parseFrom(ILcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/extractor/avi/AviChunk;

    move-result-object v0

    return-object v0

    nop

    :sswitch_data_1a
    .sparse-switch
        0x66727473 -> :sswitch_14
        0x68697661 -> :sswitch_f
        0x68727473 -> :sswitch_a
        0x6e727473 -> :sswitch_5
    .end sparse-switch
.end method

.method public static parseFrom(ILcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/extractor/avi/ListChunk;
    .registers 11
    .param p0, "listType"    # I
    .param p1, "body"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 35
    new-instance v0, Lcom/google/common/collect/ImmutableList$Builder;

    invoke-direct {v0}, Lcom/google/common/collect/ImmutableList$Builder;-><init>()V

    .line 36
    .local v0, "builder":Lcom/google/common/collect/ImmutableList$Builder;, "Lcom/google/common/collect/ImmutableList$Builder<Lcom/google/android/exoplayer2/extractor/avi/AviChunk;>;"
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v1

    .line 37
    .local v1, "listBodyEndPosition":I
    const/4 v2, -0x2

    .line 38
    .local v2, "currentTrackType":I
    :goto_a
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v3

    const/16 v4, 0x8

    if-le v3, v4, :cond_50

    .line 39
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLittleEndianInt()I

    move-result v3

    .line 40
    .local v3, "type":I
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLittleEndianInt()I

    move-result v4

    .line 41
    .local v4, "size":I
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v5

    add-int/2addr v5, v4

    .line 42
    .local v5, "innerBoxBodyEndPosition":I
    invoke-virtual {p1, v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setLimit(I)V

    .line 44
    const v6, 0x5453494c

    if-ne v3, v6, :cond_30

    .line 45
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLittleEndianInt()I

    move-result v6

    .line 46
    .local v6, "innerListType":I
    invoke-static {v6, p1}, Lcom/google/android/exoplayer2/extractor/avi/ListChunk;->parseFrom(ILcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/extractor/avi/ListChunk;

    move-result-object v6

    .line 47
    .local v6, "aviChunk":Lcom/google/android/exoplayer2/extractor/avi/AviChunk;
    goto :goto_34

    .line 48
    .end local v6    # "aviChunk":Lcom/google/android/exoplayer2/extractor/avi/AviChunk;
    :cond_30
    invoke-static {v3, v2, p1}, Lcom/google/android/exoplayer2/extractor/avi/ListChunk;->createBox(IILcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/extractor/avi/AviChunk;

    move-result-object v6

    .line 50
    .restart local v6    # "aviChunk":Lcom/google/android/exoplayer2/extractor/avi/AviChunk;
    :goto_34
    if-eqz v6, :cond_49

    .line 51
    invoke-interface {v6}, Lcom/google/android/exoplayer2/extractor/avi/AviChunk;->getType()I

    move-result v7

    const v8, 0x68727473

    if-ne v7, v8, :cond_46

    .line 52
    move-object v7, v6

    check-cast v7, Lcom/google/android/exoplayer2/extractor/avi/AviStreamHeaderChunk;

    invoke-virtual {v7}, Lcom/google/android/exoplayer2/extractor/avi/AviStreamHeaderChunk;->getTrackType()I

    move-result v2

    .line 54
    :cond_46
    invoke-virtual {v0, v6}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 56
    :cond_49
    invoke-virtual {p1, v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 57
    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setLimit(I)V

    .line 58
    .end local v3    # "type":I
    .end local v4    # "size":I
    .end local v5    # "innerBoxBodyEndPosition":I
    .end local v6    # "aviChunk":Lcom/google/android/exoplayer2/extractor/avi/AviChunk;
    goto :goto_a

    .line 59
    :cond_50
    new-instance v3, Lcom/google/android/exoplayer2/extractor/avi/ListChunk;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/google/android/exoplayer2/extractor/avi/ListChunk;-><init>(ILcom/google/common/collect/ImmutableList;)V

    return-object v3
.end method


# virtual methods
.method public getChild(Ljava/lang/Class;)Lcom/google/android/exoplayer2/extractor/avi/AviChunk;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/android/exoplayer2/extractor/avi/AviChunk;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 78
    .local p1, "c":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/avi/ListChunk;->children:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/extractor/avi/AviChunk;

    .line 79
    .local v1, "aviChunk":Lcom/google/android/exoplayer2/extractor/avi/AviChunk;
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v2, p1, :cond_19

    .line 80
    return-object v1

    .line 82
    .end local v1    # "aviChunk":Lcom/google/android/exoplayer2/extractor/avi/AviChunk;
    :cond_19
    goto :goto_6

    .line 83
    :cond_1a
    const/4 v0, 0x0

    return-object v0
.end method

.method public getType()I
    .registers 2

    .line 72
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/avi/ListChunk;->type:I

    return v0
.end method
