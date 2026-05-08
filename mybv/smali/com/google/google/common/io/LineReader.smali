.class public final Lcom/google/common/io/LineReader;
.super Ljava/lang/Object;
.source "LineReader.java"


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation build Lcom/google/common/annotations/GwtIncompatible;
.end annotation


# instance fields
.field private final buf:[C

.field private final cbuf:Ljava/nio/CharBuffer;

.field private final lineBuf:Lcom/google/common/io/LineBuffer;

.field private final lines:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final readable:Ljava/lang/Readable;

.field private final reader:Ljava/io/Reader;


# direct methods
.method public constructor <init>(Ljava/lang/Readable;)V
    .registers 3
    .param p1, "readable"    # Ljava/lang/Readable;

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    invoke-static {}, Lcom/google/common/io/CharStreams;->createBuffer()Ljava/nio/CharBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/io/LineReader;->cbuf:Ljava/nio/CharBuffer;

    .line 43
    iget-object v0, p0, Lcom/google/common/io/LineReader;->cbuf:Ljava/nio/CharBuffer;

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->array()[C

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/io/LineReader;->buf:[C

    .line 45
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/common/io/LineReader;->lines:Ljava/util/Queue;

    .line 46
    new-instance v0, Lcom/google/common/io/LineReader$1;

    invoke-direct {v0, p0}, Lcom/google/common/io/LineReader$1;-><init>(Lcom/google/common/io/LineReader;)V

    iput-object v0, p0, Lcom/google/common/io/LineReader;->lineBuf:Lcom/google/common/io/LineBuffer;

    .line 58
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Readable;

    iput-object v0, p0, Lcom/google/common/io/LineReader;->readable:Ljava/lang/Readable;

    .line 59
    instance-of v0, p1, Ljava/io/Reader;

    if-eqz v0, :cond_30

    check-cast p1, Ljava/io/Reader;

    .end local p1    # "readable":Ljava/lang/Readable;
    :goto_2d
    iput-object p1, p0, Lcom/google/common/io/LineReader;->reader:Ljava/io/Reader;

    .line 60
    return-void

    .line 59
    .restart local p1    # "readable":Ljava/lang/Readable;
    :cond_30
    const/4 p1, 0x0

    goto :goto_2d
.end method

.method static synthetic access$000(Lcom/google/common/io/LineReader;)Ljava/util/Queue;
    .registers 2
    .param p0, "x0"    # Lcom/google/common/io/LineReader;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/common/io/LineReader;->lines:Ljava/util/Queue;

    return-object v0
.end method


# virtual methods
.method public readLine()Ljava/lang/String;
    .registers 6
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 73
    :goto_1
    iget-object v1, p0, Lcom/google/common/io/LineReader;->lines:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_25

    .line 74
    iget-object v1, p0, Lcom/google/common/io/LineReader;->cbuf:Ljava/nio/CharBuffer;

    invoke-virtual {v1}, Ljava/nio/CharBuffer;->clear()Ljava/nio/Buffer;

    .line 77
    iget-object v1, p0, Lcom/google/common/io/LineReader;->reader:Ljava/io/Reader;

    if-eqz v1, :cond_2e

    iget-object v1, p0, Lcom/google/common/io/LineReader;->reader:Ljava/io/Reader;

    iget-object v2, p0, Lcom/google/common/io/LineReader;->buf:[C

    iget-object v3, p0, Lcom/google/common/io/LineReader;->buf:[C

    array-length v3, v3

    invoke-virtual {v1, v2, v4, v3}, Ljava/io/Reader;->read([CII)I

    move-result v0

    .line 80
    .local v0, "read":I
    :goto_1d
    const/4 v1, -0x1

    if-ne v0, v1, :cond_37

    .line 81
    iget-object v1, p0, Lcom/google/common/io/LineReader;->lineBuf:Lcom/google/common/io/LineBuffer;

    invoke-virtual {v1}, Lcom/google/common/io/LineBuffer;->finish()V

    .line 86
    .end local v0    # "read":I
    :cond_25
    iget-object v1, p0, Lcom/google/common/io/LineReader;->lines:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1

    .line 77
    :cond_2e
    iget-object v1, p0, Lcom/google/common/io/LineReader;->readable:Ljava/lang/Readable;

    iget-object v2, p0, Lcom/google/common/io/LineReader;->cbuf:Ljava/nio/CharBuffer;

    invoke-interface {v1, v2}, Ljava/lang/Readable;->read(Ljava/nio/CharBuffer;)I

    move-result v0

    goto :goto_1d

    .line 84
    .restart local v0    # "read":I
    :cond_37
    iget-object v1, p0, Lcom/google/common/io/LineReader;->lineBuf:Lcom/google/common/io/LineBuffer;

    iget-object v2, p0, Lcom/google/common/io/LineReader;->buf:[C

    invoke-virtual {v1, v2, v4, v0}, Lcom/google/common/io/LineBuffer;->add([CII)V

    goto :goto_1
.end method
