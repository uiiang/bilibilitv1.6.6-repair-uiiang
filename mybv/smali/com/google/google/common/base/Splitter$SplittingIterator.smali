.class abstract Lcom/google/common/base/Splitter$SplittingIterator;
.super Lcom/google/common/base/AbstractIterator;
.source "Splitter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/Splitter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "SplittingIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/base/AbstractIterator",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field limit:I

.field offset:I

.field final omitEmptyStrings:Z

.field final toSplit:Ljava/lang/CharSequence;

.field final trimmer:Lcom/google/common/base/CharMatcher;


# direct methods
.method protected constructor <init>(Lcom/google/common/base/Splitter;Ljava/lang/CharSequence;)V
    .registers 4
    .param p1, "splitter"    # Lcom/google/common/base/Splitter;
    .param p2, "toSplit"    # Ljava/lang/CharSequence;

    .prologue
    .line 525
    invoke-direct {p0}, Lcom/google/common/base/AbstractIterator;-><init>()V

    .line 522
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/base/Splitter$SplittingIterator;->offset:I

    .line 526
    # getter for: Lcom/google/common/base/Splitter;->trimmer:Lcom/google/common/base/CharMatcher;
    invoke-static {p1}, Lcom/google/common/base/Splitter;->access$200(Lcom/google/common/base/Splitter;)Lcom/google/common/base/CharMatcher;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/base/Splitter$SplittingIterator;->trimmer:Lcom/google/common/base/CharMatcher;

    .line 527
    # getter for: Lcom/google/common/base/Splitter;->omitEmptyStrings:Z
    invoke-static {p1}, Lcom/google/common/base/Splitter;->access$300(Lcom/google/common/base/Splitter;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/common/base/Splitter$SplittingIterator;->omitEmptyStrings:Z

    .line 528
    # getter for: Lcom/google/common/base/Splitter;->limit:I
    invoke-static {p1}, Lcom/google/common/base/Splitter;->access$400(Lcom/google/common/base/Splitter;)I

    move-result v0

    iput v0, p0, Lcom/google/common/base/Splitter$SplittingIterator;->limit:I

    .line 529
    iput-object p2, p0, Lcom/google/common/base/Splitter$SplittingIterator;->toSplit:Ljava/lang/CharSequence;

    .line 530
    return-void
.end method


# virtual methods
.method protected bridge synthetic computeNext()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 504
    invoke-virtual {p0}, Lcom/google/common/base/Splitter$SplittingIterator;->computeNext()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected computeNext()Ljava/lang/String;
    .registers 9

    .prologue
    const/4 v7, -0x1

    .line 539
    iget v1, p0, Lcom/google/common/base/Splitter$SplittingIterator;->offset:I

    .line 540
    .local v1, "nextStart":I
    :cond_3
    :goto_3
    iget v4, p0, Lcom/google/common/base/Splitter$SplittingIterator;->offset:I

    if-eq v4, v7, :cond_9b

    .line 541
    move v3, v1

    .line 544
    .local v3, "start":I
    iget v4, p0, Lcom/google/common/base/Splitter$SplittingIterator;->offset:I

    invoke-virtual {p0, v4}, Lcom/google/common/base/Splitter$SplittingIterator;->separatorStart(I)I

    move-result v2

    .line 545
    .local v2, "separatorPosition":I
    if-ne v2, v7, :cond_2f

    .line 546
    iget-object v4, p0, Lcom/google/common/base/Splitter$SplittingIterator;->toSplit:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 547
    .local v0, "end":I
    iput v7, p0, Lcom/google/common/base/Splitter$SplittingIterator;->offset:I

    .line 552
    :goto_18
    iget v4, p0, Lcom/google/common/base/Splitter$SplittingIterator;->offset:I

    if-ne v4, v1, :cond_37

    .line 559
    iget v4, p0, Lcom/google/common/base/Splitter$SplittingIterator;->offset:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/common/base/Splitter$SplittingIterator;->offset:I

    .line 560
    iget v4, p0, Lcom/google/common/base/Splitter$SplittingIterator;->offset:I

    iget-object v5, p0, Lcom/google/common/base/Splitter$SplittingIterator;->toSplit:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-lt v4, v5, :cond_3

    .line 561
    iput v7, p0, Lcom/google/common/base/Splitter$SplittingIterator;->offset:I

    goto :goto_3

    .line 549
    .end local v0    # "end":I
    :cond_2f
    move v0, v2

    .line 550
    .restart local v0    # "end":I
    invoke-virtual {p0, v2}, Lcom/google/common/base/Splitter$SplittingIterator;->separatorEnd(I)I

    move-result v4

    iput v4, p0, Lcom/google/common/base/Splitter$SplittingIterator;->offset:I

    goto :goto_18

    .line 566
    :cond_37
    :goto_37
    if-ge v3, v0, :cond_4a

    iget-object v4, p0, Lcom/google/common/base/Splitter$SplittingIterator;->trimmer:Lcom/google/common/base/CharMatcher;

    iget-object v5, p0, Lcom/google/common/base/Splitter$SplittingIterator;->toSplit:Ljava/lang/CharSequence;

    invoke-interface {v5, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-virtual {v4, v5}, Lcom/google/common/base/CharMatcher;->matches(C)Z

    move-result v4

    if-eqz v4, :cond_4a

    .line 567
    add-int/lit8 v3, v3, 0x1

    goto :goto_37

    .line 569
    :cond_4a
    :goto_4a
    if-le v0, v3, :cond_5f

    iget-object v4, p0, Lcom/google/common/base/Splitter$SplittingIterator;->trimmer:Lcom/google/common/base/CharMatcher;

    iget-object v5, p0, Lcom/google/common/base/Splitter$SplittingIterator;->toSplit:Ljava/lang/CharSequence;

    add-int/lit8 v6, v0, -0x1

    invoke-interface {v5, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-virtual {v4, v5}, Lcom/google/common/base/CharMatcher;->matches(C)Z

    move-result v4

    if-eqz v4, :cond_5f

    .line 570
    add-int/lit8 v0, v0, -0x1

    goto :goto_4a

    .line 573
    :cond_5f
    iget-boolean v4, p0, Lcom/google/common/base/Splitter$SplittingIterator;->omitEmptyStrings:Z

    if-eqz v4, :cond_68

    if-ne v3, v0, :cond_68

    .line 575
    iget v1, p0, Lcom/google/common/base/Splitter$SplittingIterator;->offset:I

    .line 576
    goto :goto_3

    .line 579
    :cond_68
    iget v4, p0, Lcom/google/common/base/Splitter$SplittingIterator;->limit:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_8a

    .line 583
    iget-object v4, p0, Lcom/google/common/base/Splitter$SplittingIterator;->toSplit:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 584
    iput v7, p0, Lcom/google/common/base/Splitter$SplittingIterator;->offset:I

    .line 586
    :goto_75
    if-le v0, v3, :cond_90

    iget-object v4, p0, Lcom/google/common/base/Splitter$SplittingIterator;->trimmer:Lcom/google/common/base/CharMatcher;

    iget-object v5, p0, Lcom/google/common/base/Splitter$SplittingIterator;->toSplit:Ljava/lang/CharSequence;

    add-int/lit8 v6, v0, -0x1

    invoke-interface {v5, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-virtual {v4, v5}, Lcom/google/common/base/CharMatcher;->matches(C)Z

    move-result v4

    if-eqz v4, :cond_90

    .line 587
    add-int/lit8 v0, v0, -0x1

    goto :goto_75

    .line 590
    :cond_8a
    iget v4, p0, Lcom/google/common/base/Splitter$SplittingIterator;->limit:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/google/common/base/Splitter$SplittingIterator;->limit:I

    .line 593
    :cond_90
    iget-object v4, p0, Lcom/google/common/base/Splitter$SplittingIterator;->toSplit:Ljava/lang/CharSequence;

    invoke-interface {v4, v3, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 595
    .end local v0    # "end":I
    .end local v2    # "separatorPosition":I
    .end local v3    # "start":I
    :goto_9a
    return-object v4

    :cond_9b
    invoke-virtual {p0}, Lcom/google/common/base/Splitter$SplittingIterator;->endOfData()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    goto :goto_9a
.end method

.method abstract separatorEnd(I)I
.end method

.method abstract separatorStart(I)I
.end method
