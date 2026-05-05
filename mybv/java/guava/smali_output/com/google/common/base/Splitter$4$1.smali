.class Lcom/google/common/base/Splitter$4$1;
.super Lcom/google/common/base/Splitter$SplittingIterator;
.source "Splitter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/base/Splitter$4;->iterator(Lcom/google/common/base/Splitter;Ljava/lang/CharSequence;)Lcom/google/common/base/Splitter$SplittingIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/base/Splitter$4;


# direct methods
.method constructor <init>(Lcom/google/common/base/Splitter$4;Lcom/google/common/base/Splitter;Ljava/lang/CharSequence;)V
    .registers 4
    .param p2, "x0"    # Lcom/google/common/base/Splitter;
    .param p3, "x1"    # Ljava/lang/CharSequence;

    .prologue
    .line 279
    iput-object p1, p0, Lcom/google/common/base/Splitter$4$1;->this$0:Lcom/google/common/base/Splitter$4;

    invoke-direct {p0, p2, p3}, Lcom/google/common/base/Splitter$SplittingIterator;-><init>(Lcom/google/common/base/Splitter;Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public separatorEnd(I)I
    .registers 2
    .param p1, "separatorPosition"    # I

    .prologue
    .line 288
    return p1
.end method

.method public separatorStart(I)I
    .registers 4
    .param p1, "start"    # I

    .prologue
    .line 282
    iget-object v1, p0, Lcom/google/common/base/Splitter$4$1;->this$0:Lcom/google/common/base/Splitter$4;

    iget v1, v1, Lcom/google/common/base/Splitter$4;->val$length:I

    add-int v0, p1, v1

    .line 283
    .local v0, "nextChunkStart":I
    iget-object v1, p0, Lcom/google/common/base/Splitter$4$1;->toSplit:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ge v0, v1, :cond_f

    .end local v0    # "nextChunkStart":I
    :goto_e
    return v0

    .restart local v0    # "nextChunkStart":I
    :cond_f
    const/4 v0, -0x1

    goto :goto_e
.end method
