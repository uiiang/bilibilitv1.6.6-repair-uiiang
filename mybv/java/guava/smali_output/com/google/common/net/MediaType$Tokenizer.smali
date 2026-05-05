.class final Lcom/google/common/net/MediaType$Tokenizer;
.super Ljava/lang/Object;
.source "MediaType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/net/MediaType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Tokenizer"
.end annotation


# instance fields
.field final input:Ljava/lang/String;

.field position:I


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "input"    # Ljava/lang/String;

    .prologue
    .line 808
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 806
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/net/MediaType$Tokenizer;->position:I

    .line 809
    iput-object p1, p0, Lcom/google/common/net/MediaType$Tokenizer;->input:Ljava/lang/String;

    .line 810
    return-void
.end method


# virtual methods
.method consumeCharacter(C)C
    .registers 3
    .param p1, "c"    # C

    .prologue
    .line 835
    invoke-virtual {p0}, Lcom/google/common/net/MediaType$Tokenizer;->hasMore()Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 836
    invoke-virtual {p0}, Lcom/google/common/net/MediaType$Tokenizer;->previewChar()C

    move-result v0

    if-ne v0, p1, :cond_18

    const/4 v0, 0x1

    :goto_e
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 837
    iget v0, p0, Lcom/google/common/net/MediaType$Tokenizer;->position:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/net/MediaType$Tokenizer;->position:I

    .line 838
    return p1

    .line 836
    :cond_18
    const/4 v0, 0x0

    goto :goto_e
.end method

.method consumeCharacter(Lcom/google/common/base/CharMatcher;)C
    .registers 4
    .param p1, "matcher"    # Lcom/google/common/base/CharMatcher;

    .prologue
    .line 827
    invoke-virtual {p0}, Lcom/google/common/net/MediaType$Tokenizer;->hasMore()Z

    move-result v1

    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 828
    invoke-virtual {p0}, Lcom/google/common/net/MediaType$Tokenizer;->previewChar()C

    move-result v0

    .line 829
    .local v0, "c":C
    invoke-virtual {p1, v0}, Lcom/google/common/base/CharMatcher;->matches(C)Z

    move-result v1

    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 830
    iget v1, p0, Lcom/google/common/net/MediaType$Tokenizer;->position:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/common/net/MediaType$Tokenizer;->position:I

    .line 831
    return v0
.end method

.method consumeToken(Lcom/google/common/base/CharMatcher;)Ljava/lang/String;
    .registers 5
    .param p1, "matcher"    # Lcom/google/common/base/CharMatcher;

    .prologue
    .line 820
    iget v0, p0, Lcom/google/common/net/MediaType$Tokenizer;->position:I

    .line 821
    .local v0, "startPosition":I
    invoke-virtual {p0, p1}, Lcom/google/common/net/MediaType$Tokenizer;->consumeTokenIfPresent(Lcom/google/common/base/CharMatcher;)Ljava/lang/String;

    move-result-object v1

    .line 822
    .local v1, "token":Ljava/lang/String;
    iget v2, p0, Lcom/google/common/net/MediaType$Tokenizer;->position:I

    if-eq v2, v0, :cond_f

    const/4 v2, 0x1

    :goto_b
    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 823
    return-object v1

    .line 822
    :cond_f
    const/4 v2, 0x0

    goto :goto_b
.end method

.method consumeTokenIfPresent(Lcom/google/common/base/CharMatcher;)Ljava/lang/String;
    .registers 5
    .param p1, "matcher"    # Lcom/google/common/base/CharMatcher;

    .prologue
    .line 813
    invoke-virtual {p0}, Lcom/google/common/net/MediaType$Tokenizer;->hasMore()Z

    move-result v1

    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 814
    iget v0, p0, Lcom/google/common/net/MediaType$Tokenizer;->position:I

    .line 815
    .local v0, "startPosition":I
    invoke-virtual {p1}, Lcom/google/common/base/CharMatcher;->negate()Lcom/google/common/base/CharMatcher;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/net/MediaType$Tokenizer;->input:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/google/common/base/CharMatcher;->indexIn(Ljava/lang/CharSequence;I)I

    move-result v1

    iput v1, p0, Lcom/google/common/net/MediaType$Tokenizer;->position:I

    .line 816
    invoke-virtual {p0}, Lcom/google/common/net/MediaType$Tokenizer;->hasMore()Z

    move-result v1

    if-eqz v1, :cond_24

    iget-object v1, p0, Lcom/google/common/net/MediaType$Tokenizer;->input:Ljava/lang/String;

    iget v2, p0, Lcom/google/common/net/MediaType$Tokenizer;->position:I

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :goto_23
    return-object v1

    :cond_24
    iget-object v1, p0, Lcom/google/common/net/MediaType$Tokenizer;->input:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_23
.end method

.method hasMore()Z
    .registers 3

    .prologue
    .line 847
    iget v0, p0, Lcom/google/common/net/MediaType$Tokenizer;->position:I

    if-ltz v0, :cond_10

    iget v0, p0, Lcom/google/common/net/MediaType$Tokenizer;->position:I

    iget-object v1, p0, Lcom/google/common/net/MediaType$Tokenizer;->input:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method previewChar()C
    .registers 3

    .prologue
    .line 842
    invoke-virtual {p0}, Lcom/google/common/net/MediaType$Tokenizer;->hasMore()Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 843
    iget-object v0, p0, Lcom/google/common/net/MediaType$Tokenizer;->input:Ljava/lang/String;

    iget v1, p0, Lcom/google/common/net/MediaType$Tokenizer;->position:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0
.end method
