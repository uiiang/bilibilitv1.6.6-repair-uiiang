.class Lcom/google/common/escape/CharEscaperBuilder$CharArrayDecorator;
.super Lcom/google/common/escape/CharEscaper;
.source "CharEscaperBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/escape/CharEscaperBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CharArrayDecorator"
.end annotation


# instance fields
.field private final replaceLength:I

.field private final replacements:[[C


# direct methods
.method constructor <init>([[C)V
    .registers 3
    .param p1, "replacements"    # [[C

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/google/common/escape/CharEscaper;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/google/common/escape/CharEscaperBuilder$CharArrayDecorator;->replacements:[[C

    .line 47
    array-length v0, p1

    iput v0, p0, Lcom/google/common/escape/CharEscaperBuilder$CharArrayDecorator;->replaceLength:I

    .line 48
    return-void
.end method


# virtual methods
.method public escape(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 56
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 57
    .local v2, "slen":I
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_5
    if-ge v1, v2, :cond_1a

    .line 58
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 59
    .local v0, "c":C
    iget-object v3, p0, Lcom/google/common/escape/CharEscaperBuilder$CharArrayDecorator;->replacements:[[C

    array-length v3, v3

    if-ge v0, v3, :cond_1b

    iget-object v3, p0, Lcom/google/common/escape/CharEscaperBuilder$CharArrayDecorator;->replacements:[[C

    aget-object v3, v3, v0

    if-eqz v3, :cond_1b

    .line 60
    invoke-virtual {p0, p1, v1}, Lcom/google/common/escape/CharEscaperBuilder$CharArrayDecorator;->escapeSlow(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 63
    .end local v0    # "c":C
    .end local p1    # "s":Ljava/lang/String;
    :cond_1a
    return-object p1

    .line 57
    .restart local v0    # "c":C
    .restart local p1    # "s":Ljava/lang/String;
    :cond_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_5
.end method

.method protected escape(C)[C
    .registers 3
    .param p1, "c"    # C

    .prologue
    .line 68
    iget v0, p0, Lcom/google/common/escape/CharEscaperBuilder$CharArrayDecorator;->replaceLength:I

    if-ge p1, v0, :cond_9

    iget-object v0, p0, Lcom/google/common/escape/CharEscaperBuilder$CharArrayDecorator;->replacements:[[C

    aget-object v0, v0, p1

    :goto_8
    return-object v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method
