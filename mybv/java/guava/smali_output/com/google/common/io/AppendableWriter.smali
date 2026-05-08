.class Lcom/google/common/io/AppendableWriter;
.super Ljava/io/Writer;
.source "AppendableWriter.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtIncompatible;
.end annotation


# instance fields
.field private closed:Z

.field private final target:Ljava/lang/Appendable;


# direct methods
.method constructor <init>(Ljava/lang/Appendable;)V
    .registers 3
    .param p1, "target"    # Ljava/lang/Appendable;

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    .line 45
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Appendable;

    iput-object v0, p0, Lcom/google/common/io/AppendableWriter;->target:Ljava/lang/Appendable;

    .line 46
    return-void
.end method

.method private checkNotClosed()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 121
    iget-boolean v0, p0, Lcom/google/common/io/AppendableWriter;->closed:Z

    if-eqz v0, :cond_c

    .line 122
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Cannot write to a closed writer."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 124
    :cond_c
    return-void
.end method


# virtual methods
.method public append(C)Ljava/io/Writer;
    .registers 3
    .param p1, "c"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/google/common/io/AppendableWriter;->checkNotClosed()V

    .line 102
    iget-object v0, p0, Lcom/google/common/io/AppendableWriter;->target:Ljava/lang/Appendable;

    invoke-interface {v0, p1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 103
    return-object p0
.end method

.method public append(Ljava/lang/CharSequence;)Ljava/io/Writer;
    .registers 3
    .param p1, "charSeq"    # Ljava/lang/CharSequence;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/google/common/io/AppendableWriter;->checkNotClosed()V

    .line 109
    iget-object v0, p0, Lcom/google/common/io/AppendableWriter;->target:Ljava/lang/Appendable;

    invoke-interface {v0, p1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 110
    return-object p0
.end method

.method public append(Ljava/lang/CharSequence;II)Ljava/io/Writer;
    .registers 5
    .param p1, "charSeq"    # Ljava/lang/CharSequence;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "start"    # I
    .param p3, "end"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/google/common/io/AppendableWriter;->checkNotClosed()V

    .line 116
    iget-object v0, p0, Lcom/google/common/io/AppendableWriter;->target:Ljava/lang/Appendable;

    invoke-interface {v0, p1, p2, p3}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;

    .line 117
    return-object p0
.end method

.method public bridge synthetic append(C)Ljava/lang/Appendable;
    .registers 3
    .param p1, "x0"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 34
    invoke-virtual {p0, p1}, Lcom/google/common/io/AppendableWriter;->append(C)Ljava/io/Writer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .registers 3
    .param p1, "x0"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 34
    invoke-virtual {p0, p1}, Lcom/google/common/io/AppendableWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .registers 5
    .param p1, "x0"    # Ljava/lang/CharSequence;
    .param p2, "x1"    # I
    .param p3, "x2"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 34
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/io/AppendableWriter;->append(Ljava/lang/CharSequence;II)Ljava/io/Writer;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 70
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/common/io/AppendableWriter;->closed:Z

    .line 71
    iget-object v0, p0, Lcom/google/common/io/AppendableWriter;->target:Ljava/lang/Appendable;

    instance-of v0, v0, Ljava/io/Closeable;

    if-eqz v0, :cond_10

    .line 72
    iget-object v0, p0, Lcom/google/common/io/AppendableWriter;->target:Ljava/lang/Appendable;

    check-cast v0, Ljava/io/Closeable;

    invoke-interface {v0}, Ljava/io/Closeable;->close()V

    .line 74
    :cond_10
    return-void
.end method

.method public flush()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/google/common/io/AppendableWriter;->checkNotClosed()V

    .line 63
    iget-object v0, p0, Lcom/google/common/io/AppendableWriter;->target:Ljava/lang/Appendable;

    instance-of v0, v0, Ljava/io/Flushable;

    if-eqz v0, :cond_10

    .line 64
    iget-object v0, p0, Lcom/google/common/io/AppendableWriter;->target:Ljava/lang/Appendable;

    check-cast v0, Ljava/io/Flushable;

    invoke-interface {v0}, Ljava/io/Flushable;->flush()V

    .line 66
    :cond_10
    return-void
.end method

.method public write(I)V
    .registers 4
    .param p1, "c"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/google/common/io/AppendableWriter;->checkNotClosed()V

    .line 83
    iget-object v0, p0, Lcom/google/common/io/AppendableWriter;->target:Ljava/lang/Appendable;

    int-to-char v1, p1

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 84
    return-void
.end method

.method public write(Ljava/lang/String;)V
    .registers 3
    .param p1, "str"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/google/common/io/AppendableWriter;->checkNotClosed()V

    .line 89
    iget-object v0, p0, Lcom/google/common/io/AppendableWriter;->target:Ljava/lang/Appendable;

    invoke-interface {v0, p1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 90
    return-void
.end method

.method public write(Ljava/lang/String;II)V
    .registers 6
    .param p1, "str"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/google/common/io/AppendableWriter;->checkNotClosed()V

    .line 96
    iget-object v0, p0, Lcom/google/common/io/AppendableWriter;->target:Ljava/lang/Appendable;

    add-int v1, p2, p3

    invoke-interface {v0, p1, p2, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;

    .line 97
    return-void
.end method

.method public write([CII)V
    .registers 6
    .param p1, "cbuf"    # [C
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/google/common/io/AppendableWriter;->checkNotClosed()V

    .line 57
    iget-object v0, p0, Lcom/google/common/io/AppendableWriter;->target:Ljava/lang/Appendable;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 58
    return-void
.end method
