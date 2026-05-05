.class final Lcom/google/common/io/BaseEncoding$3;
.super Ljava/io/Reader;
.source "BaseEncoding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/io/BaseEncoding;->ignoringReader(Ljava/io/Reader;Lcom/google/common/base/CharMatcher;)Ljava/io/Reader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$delegate:Ljava/io/Reader;

.field final synthetic val$toIgnore:Lcom/google/common/base/CharMatcher;


# direct methods
.method constructor <init>(Ljava/io/Reader;Lcom/google/common/base/CharMatcher;)V
    .registers 3

    .prologue
    .line 950
    iput-object p1, p0, Lcom/google/common/io/BaseEncoding$3;->val$delegate:Ljava/io/Reader;

    iput-object p2, p0, Lcom/google/common/io/BaseEncoding$3;->val$toIgnore:Lcom/google/common/base/CharMatcher;

    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 967
    iget-object v0, p0, Lcom/google/common/io/BaseEncoding$3;->val$delegate:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    .line 968
    return-void
.end method

.method public read()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 955
    :cond_0
    iget-object v1, p0, Lcom/google/common/io/BaseEncoding$3;->val$delegate:Ljava/io/Reader;

    invoke-virtual {v1}, Ljava/io/Reader;->read()I

    move-result v0

    .line 956
    .local v0, "readChar":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_12

    iget-object v1, p0, Lcom/google/common/io/BaseEncoding$3;->val$toIgnore:Lcom/google/common/base/CharMatcher;

    int-to-char v2, v0

    invoke-virtual {v1, v2}, Lcom/google/common/base/CharMatcher;->matches(C)Z

    move-result v1

    if-nez v1, :cond_0

    .line 957
    :cond_12
    return v0
.end method

.method public read([CII)I
    .registers 5
    .param p1, "cbuf"    # [C
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 962
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
